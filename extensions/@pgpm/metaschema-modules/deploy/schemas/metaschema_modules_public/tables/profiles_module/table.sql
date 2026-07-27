-- Deploy schemas/metaschema_modules_public/tables/profiles_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.profiles_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
    entity_field text,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,
    
    -- Main profiles table
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT '',
    
    -- Profile permissions join table (for UI)
    profile_permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    profile_permissions_table_name text NOT NULL DEFAULT '',
    
    -- Profile grants audit table
    profile_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    profile_grants_table_name text NOT NULL DEFAULT '',
    
    -- Profile definition grants audit table
    profile_definition_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    profile_definition_grants_table_name text NOT NULL DEFAULT '',

    -- Profile templates table (for seeding profiles into new entities)
    profile_templates_table_id uuid NOT NULL DEFAULT uuid_nil(),
    profile_templates_table_name text NOT NULL DEFAULT '',
    
    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',
    
    -- Entity table for org/group scoped profiles (NULL for app-level)
    entity_table_id uuid NULL,
    
    -- Required tables
    actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
    permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
    
    -- API routing (configurable per-module)
    api_name text DEFAULT 'admin',
    private_api_name text DEFAULT NULL,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT profile_permissions_table_fkey FOREIGN KEY (profile_permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT profile_grants_table_fkey FOREIGN KEY (profile_grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT profile_definition_grants_table_fkey FOREIGN KEY (profile_definition_grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT profile_templates_table_fkey FOREIGN KEY (profile_templates_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT permissions_table_fkey FOREIGN KEY (permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT memberships_table_fkey FOREIGN KEY (memberships_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    
    CONSTRAINT profiles_module_unique UNIQUE (database_id, scope, prefix)
);

CREATE INDEX profiles_module_database_id_idx ON metaschema_modules_public.profiles_module ( database_id );

COMMIT;
