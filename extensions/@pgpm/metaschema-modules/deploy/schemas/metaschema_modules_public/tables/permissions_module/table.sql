-- Deploy schemas/metaschema_modules_public/tables/permissions_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.permissions_module (
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
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT '',
    -- 

    --
    default_table_id uuid NOT NULL DEFAULT uuid_nil(),
    default_table_name text NOT NULL DEFAULT '',
    -- 
     
    -- Default bit-width of the permission mask for this module.
    --
    -- Chosen to maximize permission headroom without costing extra storage or
    -- compute. PostgreSQL lays out heap tuples to MAXALIGN (8 bytes on x86_64),
    -- so the row-size bucket that holds bit(24) already extends up to bit(64):
    --
    --   bitlen | row bytes | heap (1M rows) | btree idx (1M rows)
    --   -------+-----------+----------------+--------------------
    --   24     |  67       |  74 MB         |  47 MB
    --   48     |  70       |  74 MB         |  47 MB
    --   64     |  72       |  74 MB         |  47 MB   <-- same bucket
    --   65     |  73       |  81 MB         |  47 MB   <-- next bucket
    --
    -- Bitwise AND/OR on bit(<=64) fits in a single 64-bit machine word, so
    -- permission checks at 64 cost the same as at 24. Raising the default from
    -- 24 to 64 gives new modules 6.4x more permission slots before anyone has
    -- to think about running update_bitlen_permissions, at identical storage
    -- and compute cost. Do not raise past 64 casually -- bit(65+) jumps to the
    -- next 8-byte tuple bucket (+~10% heap) and pays on every write.
    --
    -- Existing databases are unaffected; this only changes the default for
    -- newly inserted permissions_module rows.
    bitlen int NOT NULL DEFAULT 64,

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,

    -- required tables    
    actor_table_id uuid NOT NULL DEFAULT uuid_nil(),

    --

    get_padded_mask text NOT NULL DEFAULT '',
    get_mask text NOT NULL DEFAULT '',
    get_by_mask text NOT NULL DEFAULT '',
    get_mask_by_name text NOT NULL DEFAULT '',

    --

    -- API routing (configurable per-module)
    api_name text DEFAULT 'admin',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_table_fkey FOREIGN KEY (default_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX permissions_module_database_id_idx ON metaschema_modules_public.permissions_module ( database_id );

COMMIT;
