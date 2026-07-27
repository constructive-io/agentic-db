-- Deploy schemas/metaschema_modules_public/tables/sessions_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.sessions_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    auth_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    users_table_id uuid NOT NULL DEFAULT uuid_nil(),

    sessions_default_expiration interval NOT NULL DEFAULT '30 days'::interval,
    sessions_table_name text NOT NULL DEFAULT 'sessions',
    session_credentials_table_name text NOT NULL DEFAULT 'session_credentials',
    auth_settings_table_name text NOT NULL DEFAULT 'app_settings_auth',
    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT auth_settings_table_fkey FOREIGN KEY (auth_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX sessions_module_database_id_idx ON metaschema_modules_public.sessions_module ( database_id );

COMMENT ON CONSTRAINT sessions_table_fkey
     ON metaschema_modules_public.sessions_module IS E'@fieldName sessionsTableBySessionsTableId';
COMMENT ON CONSTRAINT session_credentials_table_fkey
     ON metaschema_modules_public.sessions_module IS E'@fieldName sessionCredentialsTableBySessionCredentialsTableId';
COMMENT ON CONSTRAINT auth_settings_table_fkey
     ON metaschema_modules_public.sessions_module IS E'@fieldName authSettingsTableByAuthSettingsTableId';

COMMIT;
