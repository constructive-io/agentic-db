-- Deploy schemas/metaschema_public/tables/schema/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/types/object_category
-- requires: schemas/metaschema_public/types/api_exposure_level

BEGIN;

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

    is_public boolean NOT NULL DEFAULT TRUE,

    api_exposure metaschema_public.api_exposure_level NOT NULL DEFAULT 'exposable',

    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now(),

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,

    UNIQUE (database_id, name),
    UNIQUE (schema_name)
);

-- TODO: build out services
-- COMMENT ON COLUMN metaschema_public.schema.schema_name IS '@omit';

ALTER TABLE metaschema_public.schema
  ADD CONSTRAINT schema_namechk CHECK (char_length(name) > 2);

CREATE INDEX schema_database_id_idx ON metaschema_public.schema ( database_id );

COMMIT;
