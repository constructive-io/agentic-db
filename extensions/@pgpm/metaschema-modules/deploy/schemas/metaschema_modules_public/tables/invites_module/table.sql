-- Deploy schemas/metaschema_modules_public/tables/invites_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.invites_module (
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

    emails_table_id uuid NOT NULL DEFAULT uuid_nil(),
    users_table_id uuid NOT NULL DEFAULT uuid_nil(),

    invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
    claimed_invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
    
    invites_table_name text NOT NULL DEFAULT '',
    claimed_invites_table_name text NOT NULL DEFAULT '',
    submit_invite_code_function text NOT NULL DEFAULT '',

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,

    -- API routing (configurable per-module)
    api_name text DEFAULT 'admin',
    private_api_name text DEFAULT NULL,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT invites_table_fkey FOREIGN KEY (invites_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT emails_table_fkey FOREIGN KEY (emails_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT claimed_invites_table_fkey FOREIGN KEY (claimed_invites_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT pschema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

CREATE INDEX invites_module_database_id_idx ON metaschema_modules_public.invites_module ( database_id );

-- Unique constraint: one invites module per database per scope per prefix.
CREATE UNIQUE INDEX invites_module_unique_scope
    ON metaschema_modules_public.invites_module (database_id, scope, prefix);

COMMIT;
