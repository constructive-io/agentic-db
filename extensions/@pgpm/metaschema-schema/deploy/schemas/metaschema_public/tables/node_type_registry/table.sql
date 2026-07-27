-- Deploy schemas/metaschema_public/tables/node_type_registry/table to pg

-- requires: schemas/metaschema_public/schema

BEGIN;

CREATE TABLE metaschema_public.node_type_registry (
  name text PRIMARY KEY,
  slug text NOT NULL UNIQUE,
  category text NOT NULL,
  display_name text,
  description text,
  parameter_schema jsonb NOT NULL DEFAULT '{}'::jsonb,
  tags text[] NOT NULL DEFAULT '{}'::text[]
);

CREATE INDEX node_type_registry_category_idx
  ON metaschema_public.node_type_registry (category);

COMMIT;
