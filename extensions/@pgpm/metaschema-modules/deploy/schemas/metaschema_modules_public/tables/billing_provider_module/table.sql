-- Deploy schemas/metaschema_modules_public/tables/billing_provider_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.billing_provider_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,

  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Provider: which billing provider (stripe, paddle, lemon_squeezy, etc.)
  provider text NOT NULL DEFAULT 'stripe',

  -- Parameterized FK targets: pass in your own tables
  -- For SaaS: plans, plan_pricing, plan_subscriptions
  -- For e-commerce: products, product_variants, orders
  products_table_id uuid NULL,
  prices_table_id uuid NULL,
  subscriptions_table_id uuid NULL,

  -- Created mapping tables
  billing_customers_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_customers_table_name text NOT NULL DEFAULT '',

  billing_products_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_products_table_name text NOT NULL DEFAULT '',

  billing_prices_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_prices_table_name text NOT NULL DEFAULT '',

  billing_subscriptions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_subscriptions_table_name text NOT NULL DEFAULT '',

  billing_webhook_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_webhook_events_table_name text NOT NULL DEFAULT '',

  -- Generated functions
  process_billing_event_function text NOT NULL DEFAULT '',

  prefix text NULL,

  -- API routing (configurable per-module)
  api_name text DEFAULT NULL,
  private_api_name text DEFAULT NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT billing_customers_table_fkey FOREIGN KEY (billing_customers_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT billing_products_table_fkey FOREIGN KEY (billing_products_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT billing_prices_table_fkey FOREIGN KEY (billing_prices_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT billing_subscriptions_table_fkey FOREIGN KEY (billing_subscriptions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT billing_webhook_events_table_fkey FOREIGN KEY (billing_webhook_events_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT products_table_fkey FOREIGN KEY (products_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
  CONSTRAINT prices_table_fkey FOREIGN KEY (prices_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
  CONSTRAINT subscriptions_table_fkey FOREIGN KEY (subscriptions_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
  CONSTRAINT billing_provider_module_database_id_unique UNIQUE (database_id)
);

CREATE INDEX billing_provider_module_database_id_idx ON metaschema_modules_public.billing_provider_module ( database_id );

COMMIT;
