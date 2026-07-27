-- Deploy schemas/metaschema_modules_public/tables/rate_limits_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.rate_limits_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    rate_limit_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    ip_rate_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
    rate_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),

    rate_limit_settings_table_name text NOT NULL DEFAULT 'app_settings_rate_limit',
    ip_rate_limits_table_name text NOT NULL DEFAULT 'auth_ip_rate_limits',
    rate_limits_table_name text NOT NULL DEFAULT 'auth_rate_limits',
    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT rate_limit_settings_table_fkey FOREIGN KEY (rate_limit_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT ip_rate_limits_table_fkey FOREIGN KEY (ip_rate_limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT rate_limits_table_fkey FOREIGN KEY (rate_limits_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    --
    CONSTRAINT rate_limits_module_database_id_uniq UNIQUE(database_id)
);

CREATE INDEX rate_limits_module_database_id_idx ON metaschema_modules_public.rate_limits_module ( database_id );

COMMENT ON CONSTRAINT rate_limit_settings_table_fkey
     ON metaschema_modules_public.rate_limits_module IS E'@fieldName rateLimitSettingsTableByRateLimitSettingsTableId';
COMMENT ON CONSTRAINT ip_rate_limits_table_fkey
     ON metaschema_modules_public.rate_limits_module IS E'@fieldName ipRateLimitsTableByIpRateLimitsTableId';
COMMENT ON CONSTRAINT rate_limits_table_fkey
     ON metaschema_modules_public.rate_limits_module IS E'@fieldName rateLimitsTableByRateLimitsTableId';

COMMIT;
