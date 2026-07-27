-- Deploy schemas/metaschema_modules_public/tables/db_preset_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/merkle_store_module/table

BEGIN;

CREATE TABLE metaschema_modules_public.db_preset_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    public_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    public_schema_name text,
    private_schema_name text,
    scope text NOT NULL,
    prefix text NOT NULL,
    merkle_store_module_id uuid NOT NULL,
    db_presets_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Store row name inside the Merkle store tables (one shared infra store)
    store_name text NOT NULL,

    api_name text,
    private_api_name text,
    entity_table_id uuid NULL,
    policies jsonb NULL,
    provisions jsonb NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT public_schema_fkey FOREIGN KEY (public_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT merkle_store_fkey FOREIGN KEY (merkle_store_module_id) REFERENCES metaschema_modules_public.merkle_store_module (id) ON DELETE CASCADE,
    CONSTRAINT db_presets_table_fkey FOREIGN KEY (db_presets_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT db_preset_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT db_preset_module_database_merkle_unique UNIQUE (database_id, merkle_store_module_id)
);

CREATE INDEX db_preset_module_database_id_idx ON metaschema_modules_public.db_preset_module ( database_id );

COMMIT;
