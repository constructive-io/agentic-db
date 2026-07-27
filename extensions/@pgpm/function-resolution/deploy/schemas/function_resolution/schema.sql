-- Deploy schemas/function_resolution/schema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS function_resolution;
GRANT USAGE ON SCHEMA function_resolution TO administrator;
GRANT USAGE ON SCHEMA function_resolution TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA function_resolution GRANT EXECUTE ON FUNCTIONS TO administrator;

COMMIT;
