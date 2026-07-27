-- Deploy schemas/metaschema_modules_public/tables/billing_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.billing_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,

  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,

  -- Meters table: defines what you track (quota, boolean, credit_pool)
  meters_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meters_table_name text NOT NULL DEFAULT '',

  -- Plan subscriptions table: assigns plans to entities with lifecycle
  plan_subscriptions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plan_subscriptions_table_name text NOT NULL DEFAULT '',

  -- Ledger table: append-only event log
  ledger_table_id uuid NOT NULL DEFAULT uuid_nil(),
  ledger_table_name text NOT NULL DEFAULT '',

  -- Balances SPRT: denormalized current state (RLS-exempt fast lookups)
  balances_table_id uuid NOT NULL DEFAULT uuid_nil(),
  balances_table_name text NOT NULL DEFAULT '',

  -- Meter credits table: append-only credit grants for billing meters
  meter_credits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_credits_table_name text NOT NULL DEFAULT '',

  -- Meter sources table: maps billing meters to typed usage summary table columns
  meter_sources_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_sources_table_name text NOT NULL DEFAULT '',

  -- Meter defaults table: app-scope default meter catalog seeded at provision time
  meter_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_defaults_table_name text NOT NULL DEFAULT '',

  -- Generated functions
  record_usage_function text NOT NULL DEFAULT '',
  sweep_expired_subscriptions_function text NOT NULL DEFAULT '',
  rollup_usage_summary_function text NOT NULL DEFAULT '',

  prefix text NULL,

  -- Default permissions: permission names auto-granted to new members.
  -- NULL uses the module's built-in defaults; explicit array overrides them.
  default_permissions text[] DEFAULT NULL,

  -- API routing (configurable per-module)
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT meters_table_fkey FOREIGN KEY (meters_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT plan_subscriptions_table_fkey FOREIGN KEY (plan_subscriptions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT ledger_table_fkey FOREIGN KEY (ledger_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT balances_table_fkey FOREIGN KEY (balances_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT meter_credits_table_fkey FOREIGN KEY (meter_credits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT meter_sources_table_fkey FOREIGN KEY (meter_sources_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT meter_defaults_table_fkey FOREIGN KEY (meter_defaults_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT billing_module_database_id_unique UNIQUE (database_id)
);

CREATE INDEX billing_module_database_id_idx ON metaschema_modules_public.billing_module ( database_id );

COMMIT;
