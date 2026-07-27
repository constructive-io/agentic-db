-- Deploy schemas/metaschema_modules_public/tables/identity_providers_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.identity_providers_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
    entity_field text,
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,

    table_id uuid NOT NULL DEFAULT uuid_nil(),

    table_name text NOT NULL DEFAULT 'identity_providers',

    -- API routing (configurable per-module)
    api_name text DEFAULT 'auth',
    private_api_name text DEFAULT NULL,

    -- Entity-aware scope: determines which internal_secrets_module table
    -- the rotate_identity_provider_{prefix}_secret proc targets.
    --   'app'      = app_secrets (AuthzAppMembership, admin-only)
    --   'platform' = platform_secrets (platform-wide infra)
    --   'database' = secrets (per-database infra, carries database_id)
    -- Future entity types are also supported via the membership_types table.
    scope text NOT NULL,

    -- Table name prefix for the generated rotate proc.
    -- Auto-derived from scope by the trigger when empty.
    -- e.g. scope='app' → prefix='app' → rotate_identity_provider_app_secret
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX identity_providers_module_database_id_idx ON metaschema_modules_public.identity_providers_module ( database_id );
CREATE INDEX identity_providers_module_schema_id_idx ON metaschema_modules_public.identity_providers_module ( schema_id );
CREATE INDEX identity_providers_module_private_schema_id_idx ON metaschema_modules_public.identity_providers_module ( private_schema_id );
CREATE INDEX identity_providers_module_table_id_idx ON metaschema_modules_public.identity_providers_module ( table_id );

-- One install per database per scope
CREATE UNIQUE INDEX identity_providers_module_unique_scope ON metaschema_modules_public.identity_providers_module ( database_id, scope );

COMMENT ON TABLE metaschema_modules_public.identity_providers_module IS
    'Entity-aware config row for the identity_providers_module, which provisions a per-database
     identity_providers table holding OAuth2 / OIDC (and future SAML) provider definitions.
     The scope column determines which internal_secrets_module table the rotate proc targets
     (app_secrets for app scope, platform_secrets for platform scope). When scope = database,
     the secrets table gets a database_id column.
     Scoping matrix:
       scope=app       → per-database flat, in-app admin manages
       scope=platform  → platform-wide, platform admin manages (generate:constructive)
       scope=database  → per-database infra, carries database_id';
COMMENT ON COLUMN metaschema_modules_public.identity_providers_module.private_schema_id IS 'Private schema that hosts SECURITY DEFINER admin helpers which write to identity_providers (create / update / enable / disable / rotate-secret / delete) and the per-app quota check.';

COMMIT;
