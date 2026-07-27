-- Deploy schemas/utils/procedures/enforce_identity_providers_quota to pg

-- requires: schemas/utils/schema

BEGIN;

-- BEFORE INSERT trigger function enforcing the per-database cap on
-- identity_providers rows. The quota value is read from the singleton
-- app_settings_auth.identity_providers_max column.
--
-- TG_ARGV[0] : app_settings_auth schema name
-- TG_ARGV[1] : app_settings_auth table name
--
-- Raises IDENTITY_PROVIDER_QUOTA_EXCEEDED when the row count on
-- the triggering table is already at or above the configured maximum.
CREATE FUNCTION utils.enforce_identity_providers_quota()
  RETURNS TRIGGER
AS $$
DECLARE
  v_settings_schema text;
  v_settings_table text;
  v_max int;
  v_count int;
BEGIN

  v_settings_schema = TG_ARGV[0];
  v_settings_table = TG_ARGV[1];

  EXECUTE format(
    'SELECT identity_providers_max FROM %1$I.%2$I LIMIT 1',
    v_settings_schema,
    v_settings_table
  )
  INTO v_max;

  EXECUTE format(
    'SELECT count(1) FROM %1$I.%2$I',
    TG_TABLE_SCHEMA,
    TG_TABLE_NAME
  )
  INTO v_count;

  IF (v_count >= v_max) THEN
    RAISE EXCEPTION 'IDENTITY_PROVIDER_QUOTA_EXCEEDED';
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

COMMIT;
