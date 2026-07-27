-- Deploy schemas/metaschema_modules_public/tables/limits_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.limits_module (
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
    ---
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT '',

    default_table_id uuid NOT NULL DEFAULT uuid_nil(),
    default_table_name text NOT NULL DEFAULT '',
    -- 

    limit_increment_function text NOT NULL DEFAULT '',
    limit_decrement_function text NOT NULL DEFAULT '',
    limit_increment_trigger text NOT NULL DEFAULT '',
    limit_decrement_trigger text NOT NULL DEFAULT '',
    limit_update_trigger text NOT NULL DEFAULT '',
    limit_check_function text NOT NULL DEFAULT '',

    -- Credit grants ledger table
    limit_credits_table_id uuid NULL,

    -- Events audit trail table
    events_table_id uuid NULL,

    -- Credit codes table (app-level only, database-wide)
    credit_codes_table_id uuid NULL,

    -- Credit code items table (app-level only, database-wide)
    credit_code_items_table_id uuid NULL,

    -- Credit redemptions table (app-level only, database-wide)
    credit_redemptions_table_id uuid NULL,

    -- Aggregate entity limits (org-level caps, no actor_id)
    aggregate_table_id uuid NULL,

    -- Cap tables (static config limits, no metering)
    limit_caps_table_id uuid NULL,
    limit_caps_defaults_table_id uuid NULL,

    -- Cap check trigger function (gates inserts behind cap/feature flag values)
    cap_check_trigger text NOT NULL DEFAULT '',

    -- Resolve cap function (COALESCE lookup: per-entity → default → 0)
    resolve_cap_function text NOT NULL DEFAULT '',

    -- Warning tables for soft-limit notifications
    limit_warnings_table_id uuid NULL,
    limit_warning_state_table_id uuid NULL,

    -- Soft limit check functions
    limit_check_soft_function text NOT NULL DEFAULT '',
    limit_aggregate_check_soft_function text NOT NULL DEFAULT '',

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,

    -- required tables    
    actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
     
    -- API routing (configurable per-module)
    api_name text DEFAULT 'usage',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT default_table_fkey FOREIGN KEY (default_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT aggregate_table_fkey FOREIGN KEY (aggregate_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limit_credits_table_fkey FOREIGN KEY (limit_credits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT events_table_fkey FOREIGN KEY (events_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT credit_codes_table_fkey FOREIGN KEY (credit_codes_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT credit_code_items_table_fkey FOREIGN KEY (credit_code_items_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT credit_redemptions_table_fkey FOREIGN KEY (credit_redemptions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limit_caps_table_fkey FOREIGN KEY (limit_caps_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limit_caps_defaults_table_fkey FOREIGN KEY (limit_caps_defaults_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limit_warnings_table_fkey FOREIGN KEY (limit_warnings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT limit_warning_state_table_fkey FOREIGN KEY (limit_warning_state_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE

);

CREATE INDEX limits_module_database_id_idx ON metaschema_modules_public.limits_module ( database_id );

COMMIT;
