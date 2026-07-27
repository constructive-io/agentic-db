-- Deploy schemas/metaschema_modules_public/tables/realtime_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.realtime_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Schema references (populated by the insert trigger)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    subscriptions_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Generated table IDs (populated by the generator)
    change_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
    listener_node_table_id uuid NOT NULL DEFAULT uuid_nil(),
    source_registry_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Partition lifecycle configuration for change_log
    retention_hours integer NOT NULL DEFAULT 168,
    premake int NOT NULL DEFAULT 7,
    "interval" text NOT NULL DEFAULT '1 day',

    -- NOTIFY hybrid wake-up channel name (NULL = use default)
    notify_channel text NULL,

    -- Constraints
    -- API routing (configurable per-module)
    api_name text DEFAULT 'realtime',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT subscriptions_schema_fkey FOREIGN KEY (subscriptions_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT change_log_table_fkey FOREIGN KEY (change_log_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT listener_node_table_fkey FOREIGN KEY (listener_node_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT source_registry_table_fkey FOREIGN KEY (source_registry_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX realtime_module_database_id_idx ON metaschema_modules_public.realtime_module ( database_id );
CREATE UNIQUE INDEX realtime_module_unique_per_db ON metaschema_modules_public.realtime_module ( database_id );
CREATE INDEX realtime_module_schema_id_idx ON metaschema_modules_public.realtime_module ( schema_id );
CREATE INDEX realtime_module_private_schema_id_idx ON metaschema_modules_public.realtime_module ( private_schema_id );
CREATE INDEX realtime_module_subscriptions_schema_id_idx ON metaschema_modules_public.realtime_module ( subscriptions_schema_id );
CREATE INDEX realtime_module_change_log_table_id_idx ON metaschema_modules_public.realtime_module ( change_log_table_id );
CREATE INDEX realtime_module_listener_node_table_id_idx ON metaschema_modules_public.realtime_module ( listener_node_table_id );
CREATE INDEX realtime_module_source_registry_table_id_idx ON metaschema_modules_public.realtime_module ( source_registry_table_id );

COMMIT;
