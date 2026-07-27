-- Deploy schemas/metaschema_modules_public/tables/principal_auth_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.principal_auth_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    principals_table_id uuid NOT NULL DEFAULT uuid_nil(),
    principal_entities_table_id uuid NOT NULL DEFAULT uuid_nil(),
    principal_scope_overrides_table_id uuid NOT NULL DEFAULT uuid_nil(),
    users_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    audits_table_id uuid NOT NULL DEFAULT uuid_nil(),

    principals_table_name text NOT NULL DEFAULT 'principals',
    create_principal_function text NOT NULL DEFAULT 'create_principal',
    delete_principal_function text NOT NULL DEFAULT 'delete_principal',

    -- Org principal function names (generated when org memberships exist)
    create_org_principal_function text NOT NULL DEFAULT 'create_org_principal',
    delete_org_principal_function text NOT NULL DEFAULT 'delete_org_principal',

    -- Org API key function names (generated when org memberships exist)
    create_org_api_key_function text NOT NULL DEFAULT 'create_org_api_key',
    revoke_org_api_key_function text NOT NULL DEFAULT 'revoke_org_api_key',

    api_name text DEFAULT 'auth',

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT principals_table_fkey FOREIGN KEY (principals_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT principal_entities_table_fkey FOREIGN KEY (principal_entities_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX principal_auth_module_database_id_idx ON metaschema_modules_public.principal_auth_module ( database_id );

COMMENT ON CONSTRAINT principals_table_fkey
     ON metaschema_modules_public.principal_auth_module IS E'@omit';
COMMENT ON CONSTRAINT users_table_fkey
     ON metaschema_modules_public.principal_auth_module IS E'@omit';
COMMENT ON CONSTRAINT sessions_table_fkey
     ON metaschema_modules_public.principal_auth_module IS E'@omit';
COMMENT ON CONSTRAINT session_credentials_table_fkey
     ON metaschema_modules_public.principal_auth_module IS E'@omit';
COMMENT ON CONSTRAINT principal_entities_table_fkey
     ON metaschema_modules_public.principal_auth_module IS E'@omit';

COMMENT ON TABLE metaschema_modules_public.principal_auth_module IS 'Provisions the principals subsystem: a principals table, a principal_entities junction table, create/delete mutations, and org API key management. Supports both human-owned principals (AuthzDirectOwner, AuthzHumanOnly) and org-owned principals (AuthzEntityMembership with is_admin). Org principal and org API key functions are only generated when an org-scoped memberships_module exists for the database.';

COMMIT;
