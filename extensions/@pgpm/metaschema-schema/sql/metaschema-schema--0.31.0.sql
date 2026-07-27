\echo Use "CREATE EXTENSION metaschema-schema" to load this file. \quit
CREATE SCHEMA metaschema_private;

GRANT USAGE ON SCHEMA metaschema_private TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private
  GRANT ALL ON TABLES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private
  GRANT ALL ON SEQUENCES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private
  GRANT ALL ON FUNCTIONS TO authenticated;

CREATE SCHEMA metaschema_public;

GRANT USAGE ON SCHEMA metaschema_public TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public
  GRANT ALL ON TABLES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public
  GRANT ALL ON SEQUENCES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public
  GRANT ALL ON FUNCTIONS TO authenticated;

CREATE FUNCTION metaschema_private.is_valid_step_up_conditions(
  cond jsonb
) RETURNS boolean AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql IMMUTABLE;

CREATE FUNCTION metaschema_private.is_valid_step_up(
  step_up jsonb
) RETURNS boolean AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql IMMUTABLE;

CREATE TYPE metaschema_public.object_category AS ENUM ('core', 'module', 'permissions', 'auth', 'memberships', 'app');

CREATE TYPE metaschema_public.api_exposure_level AS ENUM ('exposable', 'internal_only', 'never_expose');

CREATE TABLE metaschema_public.database (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  owner_id uuid,
  schema_hash text,
  name text,
  label text,
  hash uuid,
  platform boolean NOT NULL DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  UNIQUE (schema_hash)
);

ALTER TABLE metaschema_public.database 
  ADD CONSTRAINT db_namechk 
    CHECK (char_length(name) > 2);

CREATE UNIQUE INDEX databases_database_platform_singleton_idx ON metaschema_public.database (platform) WHERE platform;

COMMENT ON COLUMN metaschema_public.database.schema_hash IS '@omit';

CREATE TABLE metaschema_public.schema (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  name text NOT NULL,
  schema_name text NOT NULL,
  label text,
  description text,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  is_public boolean NOT NULL DEFAULT true,
  api_exposure metaschema_public.api_exposure_level NOT NULL DEFAULT 'exposable',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, name),
  UNIQUE (schema_name)
);

ALTER TABLE metaschema_public.schema 
  ADD CONSTRAINT schema_namechk 
    CHECK (char_length(name) > 2);

CREATE INDEX schema_database_id_idx ON metaschema_public.schema (database_id);

CREATE TABLE metaschema_public.table (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL,
  name text NOT NULL,
  label text,
  description text,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  use_rls boolean NOT NULL DEFAULT false,
  timestamps boolean NOT NULL DEFAULT false,
  peoplestamps boolean NOT NULL DEFAULT false,
  plural_name text,
  singular_name text,
  tags citext[] NOT NULL DEFAULT '{}',
  step_up jsonb DEFAULT NULL,
  partitioned boolean NOT NULL DEFAULT false,
  partition_strategy text DEFAULT NULL,
  partition_key_names text[] DEFAULT NULL,
  partition_key_types text[] DEFAULT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, schema_id, name),
  CONSTRAINT table_step_up_check 
    CHECK (
    step_up IS NULL
      OR metaschema_private.is_valid_step_up(step_up)
  )
);

COMMENT ON COLUMN metaschema_public."table".step_up IS 'Declarative step-up auth guard: jsonb object mapping DML verbs (INSERT, UPDATE, DELETE) to a step-up spec. Values: true (default password_or_mfa), a type string (password / mfa / password_or_mfa), or an object {type, min_age, min_age_lookup, conditions} where min_age is an interval string (e.g. 6 hours) gating the guard to rows older than that age (UPDATE/DELETE only), min_age_lookup resolves per-row windows from a lookup table, and conditions is a declarative WHEN-clause tree compiled by build_condition_expr.';

ALTER TABLE metaschema_public.table 
  ADD COLUMN inherits_id uuid
    NULL
    REFERENCES metaschema_public.table (id);

CREATE INDEX table_schema_id_idx ON metaschema_public.table (schema_id);

CREATE INDEX table_database_id_idx ON metaschema_public.table (database_id);

CREATE TABLE metaschema_public.check_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  type text,
  field_ids uuid[] NOT NULL,
  expr jsonb,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}')
);

CREATE INDEX check_constraint_table_id_idx ON metaschema_public.check_constraint (table_id);

CREATE INDEX check_constraint_database_id_idx ON metaschema_public.check_constraint (database_id);

CREATE FUNCTION metaschema_private.database_name_hash(
  name text
) RETURNS bytea AS $EOFCODE$
  SELECT
    DECODE(MD5(LOWER(inflection.plural (name))), 'hex');
$EOFCODE$ LANGUAGE sql IMMUTABLE;

CREATE UNIQUE INDEX databases_database_unique_name_idx ON metaschema_public.database (owner_id, (metaschema_private.database_name_hash(name)));

CREATE TABLE metaschema_public.field (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text NOT NULL,
  label text,
  description text,
  smart_tags jsonb,
  is_required boolean NOT NULL DEFAULT false,
  api_required boolean NOT NULL DEFAULT false,
  default_value jsonb NULL DEFAULT NULL,
  generation_expression jsonb NULL DEFAULT NULL,
  generation_type text NULL DEFAULT NULL,
  type jsonb NOT NULL,
  field_order int NOT NULL DEFAULT 0,
  regexp text DEFAULT NULL,
  chk jsonb DEFAULT NULL,
  chk_expr jsonb DEFAULT NULL,
  min double precision DEFAULT NULL,
  max double precision DEFAULT NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name)
);

CREATE INDEX field_table_id_idx ON metaschema_public.field (table_id);

CREATE INDEX field_database_id_idx ON metaschema_public.field (database_id);

CREATE UNIQUE INDEX databases_field_uniq_names_idx ON metaschema_public.field (table_id, (decode(md5(lower(CASE 
  WHEN (type ->> 'name') = 'uuid' THEN regexp_replace(name, '^(.+?)(_row_id|_id|_uuid|_fk|_pk)$', E'\\1', 'i') 
  ELSE name 
END)), 'hex')));

COMMENT ON INDEX metaschema_public.databases_field_uniq_names_idx IS 'Guards against PostGraphile/Graphile inflection collisions: a uuid FK field
(e.g. action_id) and a sibling text field (e.g. action) on the same table
inflect toward the same GraphQL property name. For uuid fields the suffix
(_row_id|_id|_uuid|_fk|_pk) is stripped before uniqueness-checking, so any
name-like text field sitting next to a uuid FK must be suffixed explicitly
(convention: use *_name, e.g. action_name, sessions_table_name).';

CREATE TABLE metaschema_public.foreign_key_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  description text,
  smart_tags jsonb,
  type text,
  field_ids uuid[] NOT NULL,
  ref_table_id uuid NOT NULL REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  ref_field_ids uuid[] NOT NULL,
  delete_action char(1) DEFAULT 'c',
  update_action char(1) DEFAULT 'a',
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}'),
  CHECK (ref_field_ids <> '{}')
);

CREATE INDEX foreign_key_constraint_table_id_idx ON metaschema_public.foreign_key_constraint (table_id);

CREATE INDEX foreign_key_constraint_database_id_idx ON metaschema_public.foreign_key_constraint (database_id);

CREATE TABLE metaschema_public.full_text_search (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  field_id uuid NOT NULL,
  field_ids uuid[] NOT NULL,
  weights text[] NOT NULL,
  langs text[] NOT NULL,
  lang_column text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CHECK (
    cardinality(field_ids) = cardinality(weights)
      AND cardinality(weights) = cardinality(langs)
  )
);

CREATE INDEX full_text_search_table_id_idx ON metaschema_public.full_text_search (table_id);

CREATE INDEX full_text_search_database_id_idx ON metaschema_public.full_text_search (database_id);

CREATE TABLE metaschema_public.index (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  table_id uuid NOT NULL,
  name text NOT NULL DEFAULT '',
  field_ids uuid[],
  include_field_ids uuid[],
  access_method text NOT NULL DEFAULT 'BTREE',
  index_params jsonb,
  where_clause jsonb,
  is_unique boolean NOT NULL DEFAULT false,
  options jsonb,
  op_classes text[],
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, name)
);

CREATE INDEX index_table_id_idx ON metaschema_public.index (table_id);

CREATE INDEX index_database_id_idx ON metaschema_public.index (database_id);

CREATE TABLE metaschema_public.policy (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  grantee_name text,
  privilege text,
  permissive boolean DEFAULT true,
  disabled boolean DEFAULT false,
  policy_type text,
  data jsonb,
  with_check jsonb,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT policy_with_check_shape 
    CHECK (
    with_check IS NULL
      OR (jsonb_typeof(with_check) = 'object'
      AND with_check ? '$type'
      AND jsonb_typeof(with_check -> '$type') = 'string')
  ),
  UNIQUE (table_id, name)
);

COMMENT ON COLUMN metaschema_public.policy.with_check IS 'Optional WITH CHECK override node {"$type": "Authz...", "data": {...}}. Only valid for UPDATE policies; NULL inherits the USING expression.';

CREATE INDEX policy_table_id_idx ON metaschema_public.policy (table_id);

CREATE INDEX policy_database_id_idx ON metaschema_public.policy (database_id);

CREATE TABLE metaschema_public.primary_key_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  type text,
  field_ids uuid[] NOT NULL,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}')
);

CREATE INDEX primary_key_constraint_table_id_idx ON metaschema_public.primary_key_constraint (table_id);

CREATE INDEX primary_key_constraint_database_id_idx ON metaschema_public.primary_key_constraint (database_id);

CREATE TABLE metaschema_public.schema_grant (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL,
  grantee_name text NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

CREATE INDEX schema_grant_schema_id_idx ON metaschema_public.schema_grant (schema_id);

CREATE INDEX schema_grant_database_id_idx ON metaschema_public.schema_grant (database_id);

CREATE TABLE metaschema_public.table_grant (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  privilege text NOT NULL,
  grantee_name text NOT NULL,
  field_ids uuid[],
  is_grant boolean NOT NULL DEFAULT true,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX table_grant_table_id_idx ON metaschema_public.table_grant (table_id);

CREATE INDEX table_grant_database_id_idx ON metaschema_public.table_grant (database_id);

CREATE UNIQUE INDEX table_grant_unique_idx ON metaschema_public.table_grant (table_id, privilege, grantee_name, (COALESCE(field_ids, CAST('{}' AS uuid[]))));

CREATE FUNCTION metaschema_private.table_name_hash(
  name text
) RETURNS bytea AS $EOFCODE$
  SELECT
    DECODE(MD5(LOWER(inflection.plural (name))), 'hex');
$EOFCODE$ LANGUAGE sql IMMUTABLE;

CREATE UNIQUE INDEX databases_table_unique_name_idx ON metaschema_public.table (database_id, schema_id, (metaschema_private.table_name_hash(name)));

CREATE TABLE metaschema_public.trigger_function (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  name text NOT NULL,
  code text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, name)
);

CREATE INDEX trigger_function_database_id_idx ON metaschema_public.trigger_function (database_id);

CREATE TABLE metaschema_public.trigger (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text NOT NULL,
  event text,
  function_name text,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name)
);

CREATE INDEX trigger_table_id_idx ON metaschema_public.trigger (table_id);

CREATE INDEX trigger_database_id_idx ON metaschema_public.trigger (database_id);

CREATE TABLE metaschema_public.unique_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  description text,
  smart_tags jsonb,
  type text,
  field_ids uuid[] NOT NULL,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}')
);

CREATE INDEX unique_constraint_table_id_idx ON metaschema_public.unique_constraint (table_id);

CREATE INDEX unique_constraint_database_id_idx ON metaschema_public.unique_constraint (database_id);

CREATE TABLE metaschema_public.view (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL,
  name text NOT NULL,
  table_id uuid,
  view_type text NOT NULL,
  data jsonb DEFAULT '{}',
  filter_type text,
  filter_data jsonb DEFAULT '{}',
  security_invoker boolean DEFAULT true,
  is_read_only boolean DEFAULT true,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, name)
);

CREATE INDEX view_schema_id_idx ON metaschema_public.view (schema_id);

CREATE INDEX view_database_id_idx ON metaschema_public.view (database_id);

CREATE INDEX view_table_id_idx ON metaschema_public.view (table_id);

CREATE TABLE metaschema_public.view_table (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  view_id uuid NOT NULL,
  table_id uuid NOT NULL,
  join_order int NOT NULL DEFAULT 0,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT view_fkey
    FOREIGN KEY(view_id)
    REFERENCES metaschema_public.view (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  UNIQUE (view_id, table_id)
);

COMMENT ON TABLE metaschema_public.view_table IS 'Junction table linking views to their joined tables for referential integrity';

CREATE INDEX view_table_database_id_idx ON metaschema_public.view_table (database_id);

CREATE INDEX view_table_view_id_idx ON metaschema_public.view_table (view_id);

CREATE INDEX view_table_table_id_idx ON metaschema_public.view_table (table_id);

CREATE TABLE metaschema_public.view_grant (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  view_id uuid NOT NULL,
  grantee_name text NOT NULL,
  privilege text NOT NULL,
  with_grant_option boolean DEFAULT false,
  is_grant boolean NOT NULL DEFAULT true,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT view_fkey
    FOREIGN KEY(view_id)
    REFERENCES metaschema_public.view (id)
    ON DELETE CASCADE,
  UNIQUE (view_id, grantee_name, privilege, is_grant)
);

CREATE INDEX view_grant_view_id_idx ON metaschema_public.view_grant (view_id);

CREATE INDEX view_grant_database_id_idx ON metaschema_public.view_grant (database_id);

CREATE TABLE metaschema_public.view_rule (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  view_id uuid NOT NULL,
  name text NOT NULL,
  event text NOT NULL,
  action text NOT NULL DEFAULT 'NOTHING',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT view_fkey
    FOREIGN KEY(view_id)
    REFERENCES metaschema_public.view (id)
    ON DELETE CASCADE,
  UNIQUE (view_id, name)
);

COMMENT ON TABLE metaschema_public.view_rule IS 'DO INSTEAD rules for views (e.g., read-only enforcement)';

COMMENT ON COLUMN metaschema_public.view_rule.event IS 'INSERT, UPDATE, or DELETE';

COMMENT ON COLUMN metaschema_public.view_rule.action IS 'NOTHING (for read-only) or custom action';

CREATE INDEX view_rule_view_id_idx ON metaschema_public.view_rule (view_id);

CREATE INDEX view_rule_database_id_idx ON metaschema_public.view_rule (database_id);

CREATE TABLE metaschema_public.default_privilege (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL,
  object_type text NOT NULL,
  privilege text NOT NULL,
  grantee_name text NOT NULL,
  is_grant boolean NOT NULL DEFAULT true,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, object_type, privilege, grantee_name, is_grant)
);

CREATE INDEX default_privilege_schema_id_idx ON metaschema_public.default_privilege (schema_id);

CREATE INDEX default_privilege_database_id_idx ON metaschema_public.default_privilege (database_id);

CREATE TABLE metaschema_public.enum (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  name text NOT NULL,
  label text,
  description text,
  "values" text[] NOT NULL DEFAULT '{}',
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, name)
);

CREATE INDEX enum_schema_id_idx ON metaschema_public.enum (schema_id);

CREATE INDEX enum_database_id_idx ON metaschema_public.enum (database_id);

CREATE TABLE metaschema_public.embedding_chunks (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  embedding_field_id uuid,
  chunks_table_id uuid,
  chunks_table_name text,
  content_field_name text NOT NULL DEFAULT 'content',
  dimensions int NOT NULL DEFAULT 768,
  metric text NOT NULL DEFAULT 'cosine',
  chunk_size int NOT NULL DEFAULT 1000,
  chunk_overlap int NOT NULL DEFAULT 200,
  chunk_strategy text NOT NULL DEFAULT 'fixed',
  metadata_fields jsonb,
  search_indexes jsonb,
  enqueue_chunking_job boolean NOT NULL DEFAULT true,
  chunking_task_name text NOT NULL DEFAULT 'generate_chunks',
  embedding_model text,
  embedding_provider text,
  parent_fk_field_id uuid,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT chunks_table_fkey
    FOREIGN KEY(chunks_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT embedding_field_fkey
    FOREIGN KEY(embedding_field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE SET NULL,
  CONSTRAINT parent_fk_field_fkey
    FOREIGN KEY(parent_fk_field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE SET NULL,
  CONSTRAINT valid_metric 
    CHECK (metric IN ('cosine', 'l2', 'ip')),
  CONSTRAINT valid_chunk_strategy 
    CHECK (chunk_strategy IN ('fixed', 'sentence', 'paragraph', 'semantic')),
  CONSTRAINT valid_dimensions 
    CHECK (dimensions > 0),
  CONSTRAINT valid_chunk_size 
    CHECK (chunk_size > 0),
  CONSTRAINT valid_chunk_overlap 
    CHECK (
    chunk_overlap >= 0
      AND chunk_overlap < chunk_size
  )
);

CREATE INDEX embedding_chunks_table_id_idx ON metaschema_public.embedding_chunks (table_id);

CREATE INDEX embedding_chunks_database_id_idx ON metaschema_public.embedding_chunks (database_id);

CREATE INDEX embedding_chunks_chunks_table_id_idx ON metaschema_public.embedding_chunks (chunks_table_id);

CREATE TABLE metaschema_public.spatial_relation (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  field_id uuid NOT NULL,
  ref_table_id uuid NOT NULL,
  ref_field_id uuid NOT NULL,
  name text NOT NULL,
  operator text NOT NULL,
  param_name text NULL,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT field_fkey
    FOREIGN KEY(field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_table_fkey
    FOREIGN KEY(ref_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_field_fkey
    FOREIGN KEY(ref_field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (operator IN ('st_contains', 'st_within', 'st_covers', 'st_coveredby', 'st_intersects', 'st_equals', 'st_bbox_intersects', 'st_dwithin')),
  CHECK (
    (operator = 'st_dwithin'
      AND param_name IS NOT NULL)
      OR (operator <> 'st_dwithin'
      AND param_name IS NULL)
  )
);

CREATE INDEX spatial_relation_table_id_idx ON metaschema_public.spatial_relation (table_id);

CREATE INDEX spatial_relation_field_id_idx ON metaschema_public.spatial_relation (field_id);

CREATE INDEX spatial_relation_database_id_idx ON metaschema_public.spatial_relation (database_id);

CREATE INDEX spatial_relation_ref_table_id_idx ON metaschema_public.spatial_relation (ref_table_id);

CREATE INDEX spatial_relation_ref_field_id_idx ON metaschema_public.spatial_relation (ref_field_id);

CREATE TABLE metaschema_public.node_type_registry (
  name text PRIMARY KEY,
  slug text NOT NULL UNIQUE,
  category text NOT NULL,
  display_name text,
  description text,
  parameter_schema jsonb NOT NULL DEFAULT '{}'::jsonb,
  tags text[] NOT NULL DEFAULT CAST('{}' AS text[])
);

CREATE INDEX node_type_registry_category_idx ON metaschema_public.node_type_registry (category);

CREATE TABLE metaschema_public.function (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  name text NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, name)
);

CREATE INDEX function_database_id_idx ON metaschema_public.function (database_id);

CREATE INDEX function_schema_id_idx ON metaschema_public.function (schema_id);

CREATE TABLE metaschema_public.partition (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  table_id uuid NOT NULL,
  strategy text NOT NULL CHECK (strategy IN ('range', 'list', 'hash')),
  partition_key_id uuid NOT NULL,
  "interval" text,
  retention text,
  retention_keep_table boolean NOT NULL DEFAULT true,
  premake int NOT NULL DEFAULT 2,
  naming_pattern text NOT NULL DEFAULT '{parent}_{bounds}',
  is_parented boolean NOT NULL DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT partition_database_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT partition_table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT partition_key_field_fkey
    FOREIGN KEY(partition_key_id)
    REFERENCES metaschema_public.field (id),
  CONSTRAINT partition_table_unique 
    UNIQUE (table_id)
);

CREATE INDEX partition_database_id_idx ON metaschema_public.partition (database_id);

CREATE TABLE metaschema_public.composite_type (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  name text NOT NULL,
  label text,
  description text,
  attributes jsonb NOT NULL DEFAULT '[]',
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, name)
);

CREATE INDEX composite_type_schema_id_idx ON metaschema_public.composite_type (schema_id);

CREATE INDEX composite_type_database_id_idx ON metaschema_public.composite_type (database_id);

CREATE FUNCTION metaschema_public.tg_enforce_api_exposure_ratchet() RETURNS trigger AS $EOFCODE$
BEGIN
  IF OLD.api_exposure = 'never_expose' THEN
    RAISE EXCEPTION 'Cannot change api_exposure from ''never_expose'' on schema "%". This level is permanent and can only be removed via a direct database migration.',
      OLD.name
    USING ERRCODE = 'check_violation';
  END IF;

  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE;

CREATE TRIGGER _000003_enforce_api_exposure_ratchet
  BEFORE UPDATE
  ON metaschema_public.schema
  FOR EACH ROW
  WHEN (new.api_exposure IS DISTINCT FROM old.api_exposure)
  EXECUTE PROCEDURE metaschema_public.tg_enforce_api_exposure_ratchet();