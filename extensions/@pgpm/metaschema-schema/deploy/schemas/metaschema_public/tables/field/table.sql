-- Deploy schemas/metaschema_public/tables/field/table to pg


-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/table/table

BEGIN;

-- TODO should we just query this table and make a view?
-- https://www.postgresql.org/docs/9.2/catalog-pg-attribute.html

-- IF YOU WANT TO REMOVE THIS TABLE, answer the qustion, how would you add RLS to this:
--  SELECT 
--       attrelid::text AS tbl
--       , attname::text            AS col
--       , p.attnum::int as id,
--       t.typname as typename

--   FROM   pg_catalog.pg_attribute p
--   INNER JOIN  pg_catalog.pg_type t ON (t.oid = p.atttypid)
--   WHERE  attrelid = 'dude_schema.products'::regclass
--   AND    p.attnum > 0
--   AND    NOT attisdropped;

CREATE TABLE metaschema_public.field (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  
  table_id uuid NOT NULL,
  
  name text NOT NULL,
  label text,
  
  description text,
  smart_tags jsonb,

  is_required boolean NOT NULL DEFAULT FALSE,
  api_required boolean NOT NULL DEFAULT FALSE,
  default_value text NULL DEFAULT NULL,
  -- AST column for SQL expression validation (AST is the source of truth)
  default_value_ast jsonb NULL DEFAULT NULL,

  type citext NOT NULL,

  -- typmods DO THIS SOON!

  field_order int not null default 0,

  regexp text default null,
  chk jsonb default null,
  chk_expr jsonb default null,
  min float default null,
  max float default null,

  tags citext[] NOT NULL DEFAULT '{}',

  -- Field categorization for system/module/app fields (mirrors table categorization)
  -- category: 'core' for system fields (id, entity_id, actor_id), 'module' for module-generated fields, 'app' for user-defined fields
  -- module: the module name that created this field (e.g., 'users', 'permissions', 'memberships')
  -- scope: membership_type int (1=app, 2=org, 3=group, NULL=not scoped)
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE (table_id, name)
);


CREATE INDEX field_table_id_idx ON metaschema_public.field ( table_id );
CREATE INDEX field_database_id_idx ON metaschema_public.field ( database_id );

-- Smart comment for Graphile SQL expression validator plugin
COMMENT ON COLUMN metaschema_public.field.default_value IS E'@sqlExpression';

COMMIT;
