-- Deploy schemas/app_scope/schema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS app_scope;
GRANT USAGE ON SCHEMA app_scope TO administrator;
GRANT USAGE ON SCHEMA app_scope TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA app_scope GRANT EXECUTE ON FUNCTIONS TO administrator;

COMMIT;
