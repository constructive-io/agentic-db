-- Deploy schemas/metaschema_modules_public/tables/memberships_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.memberships_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
    memberships_table_name text NOT NULL DEFAULT '',

    members_table_id uuid NOT NULL DEFAULT uuid_nil(),
    members_table_name text NOT NULL DEFAULT '',

    membership_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
    membership_defaults_table_name text NOT NULL DEFAULT '',

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

    membership_type int NOT NULL,

    -- if this is NOT NULL, then we add entity_id 
    -- e.g. memberships to the app itself are considered global owned by app and no explicit owner
    entity_table_id uuid NULL,
    entity_table_owner_id uuid NULL,

    prefix text NULL,

    --

    actor_mask_check text NOT NULL DEFAULT '',
    actor_perm_check text NOT NULL DEFAULT '',
    entity_ids_by_mask text NULL,
    entity_ids_by_perm text NULL,
    entity_ids_function text NULL,

    -- 
     
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

    CONSTRAINT memberships_table_fkey FOREIGN KEY (memberships_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT membership_defaults_table_fkey FOREIGN KEY (membership_defaults_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT members_table_fkey FOREIGN KEY (members_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT grants_table_fkey FOREIGN KEY (grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sprt_table_fkey FOREIGN KEY (sprt_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_owner_fkey FOREIGN KEY (entity_table_owner_id) REFERENCES metaschema_public.field (id) ON DELETE CASCADE,
    CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limits_table_fkey FOREIGN KEY (limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_limits_table_fkey FOREIGN KEY (default_limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT permissions_table_fkey FOREIGN KEY (permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_permissions_table_fkey FOREIGN KEY (default_permissions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX memberships_module_database_id_idx ON metaschema_modules_public.memberships_module ( database_id );

COMMIT;
