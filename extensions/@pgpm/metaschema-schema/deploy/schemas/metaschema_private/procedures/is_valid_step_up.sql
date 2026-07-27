-- Deploy schemas/metaschema_private/procedures/is_valid_step_up to pg
-- requires: schemas/metaschema_private/schema

BEGIN;

-- Validates the declarative step_up field on metaschema_public.table.
-- Expected shape: a non-empty jsonb object mapping DML verbs to a step-up spec:
--   { "DELETE": "mfa", "UPDATE": true }
--   { "DELETE": { "type": "mfa", "min_age": "24 hours" } }
-- Keys must be INSERT, UPDATE, or DELETE.
-- Values must be one of:
--   - true (default step-up type)
--   - a type string: 'password', 'mfa', 'password_or_mfa'
--   - an object with keys from {type, min_age, min_age_lookup, conditions}:
--       type    (optional): 'password', 'mfa', 'password_or_mfa'
--       min_age (optional): a positive interval string (e.g. '6 hours');
--                           the guard only fires for rows older than this.
--                           Not allowed for INSERT (new rows have no age).
--       min_age_lookup (optional): per-row min_age resolution from a lookup
--                           table. Object with exactly {table_id (uuid),
--                           fk_field (text), min_age_field (text)}. Requires
--                           min_age as the fallback default. UPDATE/DELETE only.
--       conditions (optional): declarative WHEN-clause tree gating the guard
--                           (compiled by metaschema_generators.build_condition_expr
--                           and validated through the ast_validate framework at
--                           apply time). Shape-validated here via
--                           is_valid_step_up_conditions.

-- Shape validator for the conditions tree accepted by the declarative
-- step_up field. Mirrors the grammar of
-- metaschema_generators.build_condition_expr:
--   - array: implicit AND of nodes (must be non-empty)
--   - combinator object: exactly one of {"AND": [...]}, {"OR": [...]},
--     {"NOT": {...}}
--   - leaf object: {field, op, value?, row?, ref?} where op is one of
--     =, !=, >, <, >=, <=, LIKE, NOT LIKE, IS NULL, IS NOT NULL,
--     IS DISTINCT FROM; row is NEW or OLD; comparison ops require exactly
--     one of value (scalar) or ref ({field, row?}).
-- Field existence and AST safety are enforced at apply time by
-- build_condition_expr + ast_validate.validate_column_expression_ast.
CREATE FUNCTION metaschema_private.is_valid_step_up_conditions(cond jsonb)
RETURNS boolean AS $$
DECLARE
    -- node iteration
    v_i int;

    -- leaf validation
    v_key text;
    v_op text;

    -- ref validation (column-to-column comparison)
    v_ref jsonb;
    v_ref_key text;
BEGIN
    IF cond IS NULL THEN
        RETURN false;
    END IF;

    -- Array: implicit AND of all elements
    IF jsonb_typeof(cond) = 'array' THEN
        IF jsonb_array_length(cond) = 0 THEN
            RETURN false;
        END IF;
        FOR v_i IN 0..jsonb_array_length(cond) - 1 LOOP
            IF NOT metaschema_private.is_valid_step_up_conditions(cond -> v_i) THEN
                RETURN false;
            END IF;
        END LOOP;
        RETURN true;
    END IF;

    IF jsonb_typeof(cond) != 'object' OR cond = '{}'::jsonb THEN
        RETURN false;
    END IF;

    -- Combinator object: exactly one of AND / OR / NOT
    IF cond ? 'AND' OR cond ? 'OR' OR cond ? 'NOT' THEN
        IF (SELECT count(*) FROM jsonb_object_keys(cond)) != 1 THEN
            RETURN false;
        END IF;
        IF cond ? 'NOT' THEN
            RETURN metaschema_private.is_valid_step_up_conditions(cond -> 'NOT');
        END IF;
        IF jsonb_typeof(COALESCE(cond -> 'AND', cond -> 'OR')) != 'array' THEN
            RETURN false;
        END IF;
        RETURN metaschema_private.is_valid_step_up_conditions(COALESCE(cond -> 'AND', cond -> 'OR'));
    END IF;

    -- Leaf condition: {field, op, value?, row?, ref?}
    FOR v_key IN SELECT key FROM jsonb_each(cond) LOOP
        IF v_key NOT IN ('field', 'op', 'value', 'row', 'ref') THEN
            RETURN false;
        END IF;
    END LOOP;

    IF jsonb_typeof(cond -> 'field') IS DISTINCT FROM 'string'
       OR jsonb_typeof(cond -> 'op') IS DISTINCT FROM 'string' THEN
        RETURN false;
    END IF;

    v_op := upper(cond ->> 'op');
    IF v_op NOT IN ('=', '!=', '>', '<', '>=', '<=', 'LIKE', 'NOT LIKE',
                    'IS NULL', 'IS NOT NULL', 'IS DISTINCT FROM') THEN
        RETURN false;
    END IF;

    IF cond ? 'row' THEN
        IF jsonb_typeof(cond -> 'row') != 'string'
           OR upper(cond ->> 'row') NOT IN ('NEW', 'OLD') THEN
            RETURN false;
        END IF;
    END IF;

    -- Operators without a right-hand side
    IF v_op IN ('IS NULL', 'IS NOT NULL', 'IS DISTINCT FROM') THEN
        IF cond ? 'value' OR cond ? 'ref' THEN
            RETURN false;
        END IF;
        RETURN true;
    END IF;

    -- Comparison operators require exactly one of value / ref
    IF (cond ? 'value') = (cond ? 'ref') THEN
        RETURN false;
    END IF;

    IF cond ? 'value' THEN
        IF jsonb_typeof(cond -> 'value') NOT IN ('string', 'number', 'boolean') THEN
            RETURN false;
        END IF;
        RETURN true;
    END IF;

    v_ref := cond -> 'ref';
    IF jsonb_typeof(v_ref) != 'object' THEN
        RETURN false;
    END IF;
    FOR v_ref_key IN SELECT key FROM jsonb_each(v_ref) LOOP
        IF v_ref_key NOT IN ('field', 'row') THEN
            RETURN false;
        END IF;
    END LOOP;
    IF jsonb_typeof(v_ref -> 'field') IS DISTINCT FROM 'string' THEN
        RETURN false;
    END IF;
    IF v_ref ? 'row' THEN
        IF jsonb_typeof(v_ref -> 'row') != 'string'
           OR upper(v_ref ->> 'row') NOT IN ('NEW', 'OLD') THEN
            RETURN false;
        END IF;
    END IF;

    RETURN true;
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE;

CREATE FUNCTION metaschema_private.is_valid_step_up(step_up jsonb)
RETURNS boolean AS $$
DECLARE
    -- entry iteration
    v_key text;
    v_value jsonb;

    -- object value validation
    v_obj_key text;
    v_type jsonb;
    v_min_age jsonb;
    v_min_age_interval interval;

    -- min_age_lookup validation (per-row lookup windows)
    v_min_age_lookup jsonb;
    v_lookup_key text;
    v_lookup_table_id uuid;

    -- conditions validation (declarative WHEN-clause tree)
    v_conditions jsonb;
BEGIN
    IF step_up IS NULL THEN
        RETURN false;
    END IF;

    IF jsonb_typeof(step_up) != 'object' THEN
        RETURN false;
    END IF;

    IF step_up = '{}'::jsonb THEN
        RETURN false;
    END IF;

    FOR v_key, v_value IN SELECT key, value FROM jsonb_each(step_up) LOOP
        IF v_key NOT IN ('INSERT', 'UPDATE', 'DELETE') THEN
            RETURN false;
        END IF;

        IF jsonb_typeof(v_value) = 'boolean' THEN
            IF v_value = 'false'::jsonb THEN
                RETURN false;
            END IF;
        ELSIF jsonb_typeof(v_value) = 'string' THEN
            IF v_value #>> '{}' NOT IN ('password', 'mfa', 'password_or_mfa') THEN
                RETURN false;
            END IF;
        ELSIF jsonb_typeof(v_value) = 'object' THEN
            IF v_value = '{}'::jsonb THEN
                RETURN false;
            END IF;

            FOR v_obj_key IN SELECT key FROM jsonb_each(v_value) LOOP
                IF v_obj_key NOT IN ('type', 'min_age', 'min_age_lookup', 'conditions') THEN
                    RETURN false;
                END IF;
            END LOOP;

            v_type := v_value -> 'type';
            IF v_type IS NOT NULL THEN
                IF jsonb_typeof(v_type) != 'string'
                   OR v_type #>> '{}' NOT IN ('password', 'mfa', 'password_or_mfa') THEN
                    RETURN false;
                END IF;
            END IF;

            v_min_age := v_value -> 'min_age';
            IF v_min_age IS NOT NULL THEN
                -- min_age is meaningless for INSERT: a new row has no age
                IF v_key = 'INSERT' THEN
                    RETURN false;
                END IF;

                IF jsonb_typeof(v_min_age) != 'string' THEN
                    RETURN false;
                END IF;

                BEGIN
                    v_min_age_interval := (v_min_age #>> '{}')::interval;
                EXCEPTION WHEN OTHERS THEN
                    RETURN false;
                END;

                IF v_min_age_interval <= interval '0' THEN
                    RETURN false;
                END IF;
            END IF;

            v_min_age_lookup := v_value -> 'min_age_lookup';
            IF v_min_age_lookup IS NOT NULL THEN
                -- lookup windows are meaningless for INSERT and need min_age
                -- as the fallback default
                IF v_key = 'INSERT' OR v_min_age IS NULL THEN
                    RETURN false;
                END IF;

                IF jsonb_typeof(v_min_age_lookup) != 'object' THEN
                    RETURN false;
                END IF;

                FOR v_lookup_key IN SELECT key FROM jsonb_each(v_min_age_lookup) LOOP
                    IF v_lookup_key NOT IN ('table_id', 'fk_field', 'min_age_field') THEN
                        RETURN false;
                    END IF;
                END LOOP;

                IF jsonb_typeof(v_min_age_lookup -> 'table_id') IS DISTINCT FROM 'string'
                   OR jsonb_typeof(v_min_age_lookup -> 'fk_field') IS DISTINCT FROM 'string'
                   OR jsonb_typeof(v_min_age_lookup -> 'min_age_field') IS DISTINCT FROM 'string' THEN
                    RETURN false;
                END IF;

                BEGIN
                    v_lookup_table_id := (v_min_age_lookup ->> 'table_id')::uuid;
                EXCEPTION WHEN OTHERS THEN
                    RETURN false;
                END;
            END IF;

            v_conditions := v_value -> 'conditions';
            IF v_conditions IS NOT NULL THEN
                IF NOT metaschema_private.is_valid_step_up_conditions(v_conditions) THEN
                    RETURN false;
                END IF;
            END IF;
        ELSE
            RETURN false;
        END IF;
    END LOOP;

    RETURN true;
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE;

COMMIT;
