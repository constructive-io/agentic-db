-- Deploy schemas/metaschema_modules_public/tables/session_secrets_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.session_secrets_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT 'session_secrets',
    --
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE UNIQUE INDEX session_secrets_module_database_id_idx ON metaschema_modules_public.session_secrets_module ( database_id );
CREATE INDEX session_secrets_module_schema_id_idx ON metaschema_modules_public.session_secrets_module ( schema_id );
CREATE INDEX session_secrets_module_table_id_idx ON metaschema_modules_public.session_secrets_module ( table_id );
CREATE INDEX session_secrets_module_sessions_table_id_idx ON metaschema_modules_public.session_secrets_module ( sessions_table_id );

COMMENT ON TABLE metaschema_modules_public.session_secrets_module IS 'Config row for the session_secrets_module, which provisions a DB-private, session-scoped ephemeral key-value store for challenges, nonces, and one-time tokens that must never be readable by end users.';
COMMENT ON COLUMN metaschema_modules_public.session_secrets_module.sessions_table_id IS 'Resolved reference to sessions_module.sessions_table_name, used to FK session_secrets.session_id with ON DELETE CASCADE.';

COMMIT;
