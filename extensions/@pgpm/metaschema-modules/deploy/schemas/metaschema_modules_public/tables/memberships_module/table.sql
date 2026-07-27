-- Deploy schemas/metaschema_modules_public/tables/memberships_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.memberships_module (
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

    memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
    memberships_table_name text NOT NULL DEFAULT '',

    members_table_id uuid NOT NULL DEFAULT uuid_nil(),
    members_table_name text NOT NULL DEFAULT '',

    membership_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
    membership_defaults_table_name text NOT NULL DEFAULT '',

    -- Nullable: only created when entity_table_id IS NOT NULL (entity-scoped membership types)
    membership_settings_table_id uuid NULL,
    membership_settings_table_name text NOT NULL DEFAULT '',

    grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    grants_table_name text NOT NULL DEFAULT '',

    -- required tables    
    actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
    limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
    default_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
    permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    default_permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sprt_table_id uuid NOT NULL DEFAULT uuid_nil(),

    admin_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    admin_grants_table_name text NOT NULL DEFAULT '',

    owner_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    owner_grants_table_name text NOT NULL DEFAULT '',

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,
    entity_table_owner_id uuid NULL,

    -- Populated by memberships_module generator when get_organization_id is created
    get_org_fn text NULL,

    --

    actor_mask_check text NOT NULL DEFAULT '',
    actor_perm_check text NOT NULL DEFAULT '',
    entity_ids_by_mask text NULL,
    entity_ids_by_perm text NULL,
    entity_ids_function text NULL,

    member_profiles_table_id uuid NULL,

    -- Audit tables for permission defaults (created by memberships_module when has_permissions=true)
    permission_default_permissions_table_id uuid NULL,
    permission_default_grants_table_id uuid NULL,

    -- API routing (configurable per-module)
    api_name text DEFAULT 'admin',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

    CONSTRAINT memberships_table_fkey FOREIGN KEY (memberships_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT membership_defaults_table_fkey FOREIGN KEY (membership_defaults_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT membership_settings_table_fkey FOREIGN KEY (membership_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT members_table_fkey FOREIGN KEY (members_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT grants_table_fkey FOREIGN KEY (grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sprt_table_fkey FOREIGN KEY (sprt_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_owner_fkey FOREIGN KEY (entity_table_owner_id) REFERENCES metaschema_public.field (id) ON DELETE CASCADE,
    CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limits_table_fkey FOREIGN KEY (limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_limits_table_fkey FOREIGN KEY (default_limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT permissions_table_fkey FOREIGN KEY (permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_permissions_table_fkey FOREIGN KEY (default_permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT memberships_module_unique UNIQUE (database_id, scope, prefix)
);

CREATE INDEX memberships_module_database_id_idx ON metaschema_modules_public.memberships_module ( database_id );

COMMIT;
