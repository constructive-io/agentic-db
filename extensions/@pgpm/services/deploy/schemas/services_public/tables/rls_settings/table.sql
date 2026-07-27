-- Deploy schemas/services_public/tables/rls_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/tables/function/table

BEGIN;

-- Per-database RLS module runtime configuration.
-- Typed replacement for api_modules rows with name = 'rls_module'.
-- One row per database; the server reads this instead of the JSONB blob.
CREATE TABLE services_public.rls_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL UNIQUE,

    -- Schema references (FK to metaschema_public.schema)
    authenticate_schema_id uuid,
    role_schema_id uuid,

    -- Function references (FK to metaschema_public.function)
    authenticate_function_id uuid,
    authenticate_strict_function_id uuid,
    current_role_function_id uuid,
    current_role_id_function_id uuid,
    current_user_agent_function_id uuid,
    current_ip_address_function_id uuid,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT authenticate_schema_fkey FOREIGN KEY (authenticate_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT role_schema_fkey FOREIGN KEY (role_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT authenticate_function_fkey FOREIGN KEY (authenticate_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT authenticate_strict_function_fkey FOREIGN KEY (authenticate_strict_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT current_role_function_fkey FOREIGN KEY (current_role_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT current_role_id_function_fkey FOREIGN KEY (current_role_id_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT current_user_agent_function_fkey FOREIGN KEY (current_user_agent_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT current_ip_address_function_fkey FOREIGN KEY (current_ip_address_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL
);

COMMENT ON TABLE services_public.rls_settings IS 'Per-database RLS module runtime configuration; typed replacement for api_modules rls_module JSONB entries';
COMMENT ON COLUMN services_public.rls_settings.id IS 'Unique identifier for this RLS settings record';
COMMENT ON COLUMN services_public.rls_settings.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.rls_settings.authenticate_schema_id IS 'Schema containing authenticate/authenticate_strict functions (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.rls_settings.role_schema_id IS 'Schema containing current_role and related functions (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.rls_settings.authenticate_function_id IS 'Reference to the authenticate function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.rls_settings.authenticate_strict_function_id IS 'Reference to the strict authenticate function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.rls_settings.current_role_function_id IS 'Reference to the current_role function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.rls_settings.current_role_id_function_id IS 'Reference to the current_role_id function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.rls_settings.current_user_agent_function_id IS 'Reference to the current_user_agent function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.rls_settings.current_ip_address_function_id IS 'Reference to the current_ip_address function (FK to metaschema_public.function)';

CREATE INDEX rls_settings_database_id_idx ON services_public.rls_settings (database_id);

COMMIT;
