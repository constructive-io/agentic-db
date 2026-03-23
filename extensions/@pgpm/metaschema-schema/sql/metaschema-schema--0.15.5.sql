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

CREATE TYPE metaschema_public.object_category AS ENUM ('core', 'module', 'app');

CREATE TABLE metaschema_public.database (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  owner_id uuid,
  schema_hash text,
  name text,
  label text,
  hash uuid,
  UNIQUE (schema_hash)
);

ALTER TABLE metaschema_public.database 
  ADD CONSTRAINT db_namechk 
    CHECK (char_length(name) > 2);

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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  is_public boolean NOT NULL DEFAULT true,
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

CREATE TABLE metaschema_public."table" (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL,
  name text NOT NULL,
  label text,
  description text,
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,
  use_rls boolean NOT NULL DEFAULT false,
  timestamps boolean NOT NULL DEFAULT false,
  peoplestamps boolean NOT NULL DEFAULT false,
  plural_name text,
  singular_name text,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, schema_id, name)
);

ALTER TABLE metaschema_public."table" 
  ADD COLUMN inherits_id uuid
    NULL
    REFERENCES metaschema_public."table" (id);

CREATE INDEX table_schema_id_idx ON metaschema_public."table" (schema_id);

CREATE INDEX table_database_id_idx ON metaschema_public."table" (database_id);

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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}')
);

CREATE INDEX check_constraint_table_id_idx ON metaschema_public.check_constraint (table_id);

CREATE INDEX check_constraint_database_id_idx ON metaschema_public.check_constraint (database_id);

CREATE FUNCTION metaschema_private.database_name_hash(name text) RETURNS bytea AS $EOFCODE$
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
  default_value text NULL DEFAULT NULL,
  default_value_ast jsonb NULL DEFAULT NULL,
  type citext NOT NULL,
  field_order int NOT NULL DEFAULT 0,
  regexp text DEFAULT NULL,
  chk jsonb DEFAULT NULL,
  chk_expr jsonb DEFAULT NULL,
  min double precision DEFAULT NULL,
  max double precision DEFAULT NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name)
);

CREATE INDEX field_table_id_idx ON metaschema_public.field (table_id);

CREATE INDEX field_database_id_idx ON metaschema_public.field (database_id);

COMMENT ON COLUMN metaschema_public.field.default_value IS '@sqlExpression';

CREATE UNIQUE INDEX databases_field_uniq_names_idx ON metaschema_public.field (table_id, (decode(md5(lower(CASE 
  WHEN type = 'uuid' THEN regexp_replace(name, '^(.+?)(_row_id|_id|_uuid|_fk|_pk)$', E'\\1', 'i') 
  ELSE name 
END)), 'hex')));

CREATE TABLE metaschema_public.foreign_key_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL,
  name text,
  description text,
  smart_tags jsonb,
  type text,
  field_ids uuid[] NOT NULL,
  ref_table_id uuid NOT NULL REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  ref_field_ids uuid[] NOT NULL,
  delete_action char(1) DEFAULT 'c',
  update_action char(1) DEFAULT 'a',
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  UNIQUE (table_id, name)
);

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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

CREATE INDEX table_grant_table_id_idx ON metaschema_public.table_grant (table_id);

CREATE INDEX table_grant_database_id_idx ON metaschema_public.table_grant (database_id);

CREATE FUNCTION metaschema_private.table_name_hash(name text) RETURNS bytea AS $EOFCODE$
  SELECT
    DECODE(MD5(LOWER(inflection.plural (name))), 'hex');
$EOFCODE$ LANGUAGE sql IMMUTABLE;

CREATE UNIQUE INDEX databases_table_unique_name_idx ON metaschema_public."table" (database_id, schema_id, (metaschema_private.table_name_hash(name)));

CREATE TABLE metaschema_public.trigger_function (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  name text NOT NULL,
  code text,
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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  module text NULL,
  scope int NULL,
  tags citext[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
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
  module text NULL,
  scope int NULL,
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
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  UNIQUE (schema_id, name)
);

CREATE INDEX view_schema_id_idx ON metaschema_public.view (schema_id);

CREATE INDEX view_database_id_idx ON metaschema_public.view (database_id);

CREATE INDEX view_table_id_idx ON metaschema_public.view (table_id);

CREATE TABLE metaschema_public.view_table (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  view_id uuid NOT NULL,
  table_id uuid NOT NULL,
  join_order int NOT NULL DEFAULT 0,
  CONSTRAINT view_fkey
    FOREIGN KEY(view_id)
    REFERENCES metaschema_public.view (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  UNIQUE (view_id, table_id)
);

COMMENT ON TABLE metaschema_public.view_table IS 'Junction table linking views to their joined tables for referential integrity';

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
  values text[] NOT NULL DEFAULT '{}',
  smart_tags jsonb,
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,
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
  enqueue_chunking_job boolean NOT NULL DEFAULT true,
  chunking_task_name text NOT NULL DEFAULT 'generate_chunks',
  parent_fk_field_id uuid,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT chunks_table_fkey
    FOREIGN KEY(chunks_table_id)
    REFERENCES metaschema_public."table" (id)
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
