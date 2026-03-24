-- Deploy schemas/metaschema_modules_public/tables/rls_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/services_public/tables/apis/table

BEGIN;

CREATE TABLE metaschema_modules_public.rls_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    users_table_id uuid NOT NULL DEFAULT uuid_nil(),

    --
    
    authenticate text NOT NULL DEFAULT 'authenticate',
    authenticate_strict text NOT NULL DEFAULT 'authenticate_strict',
    "current_role" text NOT NULL DEFAULT 'current_user',
    current_role_id text NOT NULL DEFAULT 'current_user_id',

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT pschema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

    --
    CONSTRAINT database_id_uniq UNIQUE(database_id)
);


COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.rls_module IS E'@omit';
COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.rls_module IS E'@omit';
COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.rls_module IS E'@omit';
COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.rls_module IS E'@omit';
CREATE INDEX rls_module_database_id_idx ON metaschema_modules_public.rls_module ( database_id );

COMMIT;
