-- Deploy schemas/metaschema_modules_public/tables/config_secrets_user_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.config_secrets_user_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table ('owner_id' here).
    -- Recorded so consumers read it as a stored fact instead of hardcoding.
    entity_field text,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT 'user_secrets',

    -- API routing (configurable per-module)
    api_name text DEFAULT 'config',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE UNIQUE INDEX config_secrets_user_module_database_id_idx ON metaschema_modules_public.config_secrets_user_module ( database_id );

COMMIT;
