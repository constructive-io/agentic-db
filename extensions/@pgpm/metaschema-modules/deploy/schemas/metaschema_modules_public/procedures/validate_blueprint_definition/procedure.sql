-- Deploy schemas/metaschema_modules_public/procedures/validate_blueprint_definition/procedure to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint_template/table
-- requires: schemas/metaschema_modules_public/tables/blueprint/table

BEGIN;

-- Trigger function that validates the blueprint definition format.
-- Enforces structural correctness on INSERT/UPDATE of blueprint and blueprint_template.
-- Validates:
--   1. tables[] is a non-empty array with required keys (ref, table_name, nodes[])
--   2. nodes[] entries are strings or {"$type": "...", "data": {...}} objects
--   3. policies[] entries have $type
--   4. relations[] entries have $type, source_ref, target_ref
--   5. indexes[] entries have table_ref, column, access_method
--   6. full_text_searches[] entries have table_ref, field, sources[]
CREATE FUNCTION metaschema_modules_public.tg_validate_blueprint_definition()
RETURNS TRIGGER AS $$
DECLARE
    v_definition jsonb;
    v_table_entry jsonb;
    v_table_idx integer;
    v_node_entry jsonb;
    v_node_idx integer;
    v_policy_entry jsonb;
    v_policy_idx integer;
    v_relation_entry jsonb;
    v_relation_idx integer;
    v_table_ref text;
    v_index_entry jsonb;
    v_index_idx integer;
    v_fts_entry jsonb;
    v_fts_idx integer;
    v_source_entry jsonb;
    v_source_idx integer;
BEGIN
    v_definition := NEW.definition;

    -- definition must be an object
    IF jsonb_typeof(v_definition) != 'object' THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: definition must be a JSON object, got %', jsonb_typeof(v_definition);
    END IF;

    -- tables[] is required and must be an array
    IF NOT (v_definition ? 'tables') THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: definition must contain a "tables" array';
    END IF;

    IF jsonb_typeof(v_definition->'tables') != 'array' THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "tables" must be an array, got %', jsonb_typeof(v_definition->'tables');
    END IF;

    IF jsonb_array_length(v_definition->'tables') = 0 THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "tables" array must not be empty';
    END IF;

    -- Validate each table entry
    v_table_idx := 0;
    FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP

        IF jsonb_typeof(v_table_entry) != 'object' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] must be an object', v_table_idx;
        END IF;

        v_table_ref := COALESCE(v_table_entry->>'ref', 'index ' || v_table_idx);

        -- Required keys
        IF NOT (v_table_entry ? 'ref') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] missing required key "ref"', v_table_idx;
        END IF;

        IF NOT (v_table_entry ? 'table_name') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) missing required key "table_name"', v_table_idx, v_table_ref;
        END IF;

        IF NOT (v_table_entry ? 'nodes') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) missing required key "nodes"', v_table_idx, v_table_ref;
        END IF;

        IF jsonb_typeof(v_table_entry->'nodes') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "nodes" must be an array', v_table_idx, v_table_ref;
        END IF;

        IF jsonb_array_length(v_table_entry->'nodes') = 0 THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "nodes" array must not be empty', v_table_idx, v_table_ref;
        END IF;

        -- Validate each node entry
        v_node_idx := 0;
        WHILE v_node_idx < jsonb_array_length(v_table_entry->'nodes') LOOP
            v_node_entry := v_table_entry->'nodes'->v_node_idx;

            IF jsonb_typeof(v_node_entry) = 'string' THEN
                -- String shorthand: valid (e.g. "DataTimestamps")
                NULL;
            ELSIF jsonb_typeof(v_node_entry) = 'object' THEN
                -- Object form: must have $type
                IF NOT (v_node_entry ? '$type') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] object missing required key "$type"', v_table_idx, v_table_ref, v_node_idx;
                END IF;
                -- data key is optional, but if present must be an object
                IF v_node_entry ? 'data' AND jsonb_typeof(v_node_entry->'data') != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] "data" must be an object', v_table_idx, v_table_ref, v_node_idx;
                END IF;
            ELSE
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] must be a string or object, got %', v_table_idx, v_table_ref, v_node_idx, jsonb_typeof(v_node_entry);
            END IF;

            v_node_idx := v_node_idx + 1;
        END LOOP;

        -- Validate policies[] if present
        IF v_table_entry ? 'policies' THEN
            IF jsonb_typeof(v_table_entry->'policies') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "policies" must be an array', v_table_idx, v_table_ref;
            END IF;

            v_policy_idx := 0;
            WHILE v_policy_idx < jsonb_array_length(v_table_entry->'policies') LOOP
                v_policy_entry := v_table_entry->'policies'->v_policy_idx;

                IF jsonb_typeof(v_policy_entry) != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] must be an object', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                IF NOT (v_policy_entry ? '$type') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] missing required key "$type"', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                -- data key is optional, but if present must be an object
                IF v_policy_entry ? 'data' AND jsonb_typeof(v_policy_entry->'data') != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] "data" must be an object', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                v_policy_idx := v_policy_idx + 1;
            END LOOP;
        END IF;

        -- Validate grants[] if present
        IF v_table_entry ? 'grants' THEN
            IF jsonb_typeof(v_table_entry->'grants') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "grants" must be an array', v_table_idx, v_table_ref;
            END IF;
        END IF;

        v_table_idx := v_table_idx + 1;
    END LOOP;

    -- Validate relations[] if present
    IF v_definition ? 'relations' THEN
        IF jsonb_typeof(v_definition->'relations') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "relations" must be an array, got %', jsonb_typeof(v_definition->'relations');
        END IF;

        v_relation_idx := 0;
        FOR v_relation_entry IN SELECT jsonb_array_elements(v_definition->'relations') LOOP

            IF jsonb_typeof(v_relation_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] must be an object', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? '$type') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "$type"', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? 'source_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "source_ref"', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? 'target_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "target_ref"', v_relation_idx;
            END IF;

            -- data key is optional, but if present must be an object
            IF v_relation_entry ? 'data' AND jsonb_typeof(v_relation_entry->'data') != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] "data" must be an object', v_relation_idx;
            END IF;

            v_relation_idx := v_relation_idx + 1;
        END LOOP;
    END IF;

    -- Validate indexes[] if present
    IF v_definition ? 'indexes' THEN
        IF jsonb_typeof(v_definition->'indexes') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "indexes" must be an array, got %', jsonb_typeof(v_definition->'indexes');
        END IF;

        v_index_idx := 0;
        FOR v_index_entry IN SELECT jsonb_array_elements(v_definition->'indexes') LOOP

            IF jsonb_typeof(v_index_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] must be an object', v_index_idx;
            END IF;

            IF NOT (v_index_entry ? 'table_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "table_ref"', v_index_idx;
            END IF;

            -- Require either "column" (single) or "columns" (multi-column array)
            IF NOT (v_index_entry ? 'column') AND NOT (v_index_entry ? 'columns') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "column" (or "columns" for multi-column)', v_index_idx;
            END IF;

            -- If "columns" is present, it must be an array
            IF v_index_entry ? 'columns' AND jsonb_typeof(v_index_entry->'columns') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "columns" must be an array', v_index_idx;
            END IF;

            IF NOT (v_index_entry ? 'access_method') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "access_method"', v_index_idx;
            END IF;

            -- options key is optional, but if present must be an object
            IF v_index_entry ? 'options' AND jsonb_typeof(v_index_entry->'options') != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "options" must be an object', v_index_idx;
            END IF;

            -- op_classes key is optional, but if present must be an array
            IF v_index_entry ? 'op_classes' AND jsonb_typeof(v_index_entry->'op_classes') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "op_classes" must be an array', v_index_idx;
            END IF;

            v_index_idx := v_index_idx + 1;
        END LOOP;
    END IF;

    -- Validate full_text_searches[] if present
    IF v_definition ? 'full_text_searches' THEN
        IF jsonb_typeof(v_definition->'full_text_searches') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "full_text_searches" must be an array, got %', jsonb_typeof(v_definition->'full_text_searches');
        END IF;

        v_fts_idx := 0;
        FOR v_fts_entry IN SELECT jsonb_array_elements(v_definition->'full_text_searches') LOOP

            IF jsonb_typeof(v_fts_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] must be an object', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'table_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "table_ref"', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'field') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "field"', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'sources') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "sources"', v_fts_idx;
            END IF;

            IF jsonb_typeof(v_fts_entry->'sources') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] "sources" must be an array', v_fts_idx;
            END IF;

            IF jsonb_array_length(v_fts_entry->'sources') = 0 THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] "sources" array must not be empty', v_fts_idx;
            END IF;

            -- Validate each source entry
            v_source_idx := 0;
            WHILE v_source_idx < jsonb_array_length(v_fts_entry->'sources') LOOP
                v_source_entry := v_fts_entry->'sources'->v_source_idx;

                IF jsonb_typeof(v_source_entry) != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] must be an object', v_fts_idx, v_source_idx;
                END IF;

                IF NOT (v_source_entry ? 'field') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] missing required key "field"', v_fts_idx, v_source_idx;
                END IF;

                IF NOT (v_source_entry ? 'weight') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] missing required key "weight"', v_fts_idx, v_source_idx;
                END IF;

                v_source_idx := v_source_idx + 1;
            END LOOP;

            v_fts_idx := v_fts_idx + 1;
        END LOOP;
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.tg_validate_blueprint_definition IS
    'Trigger function that validates the blueprint definition format on INSERT/UPDATE. Ensures structural correctness: tables[] with nodes[] (string shorthand or {$type, data} objects), policies[] with $type, relations[] with $type/source_ref/target_ref, indexes[] with table_ref/column/access_method, full_text_searches[] with table_ref/field/sources[]. Rejects malformed definitions before they reach construct_blueprint().';

-- Attach to blueprint table
CREATE TRIGGER _100_validate_blueprint_definition
    BEFORE INSERT OR UPDATE OF definition ON metaschema_modules_public.blueprint
    FOR EACH ROW
    EXECUTE FUNCTION metaschema_modules_public.tg_validate_blueprint_definition();

-- Attach to blueprint_template table
CREATE TRIGGER _100_validate_blueprint_definition
    BEFORE INSERT OR UPDATE OF definition ON metaschema_modules_public.blueprint_template
    FOR EACH ROW
    EXECUTE FUNCTION metaschema_modules_public.tg_validate_blueprint_definition();

COMMIT;
