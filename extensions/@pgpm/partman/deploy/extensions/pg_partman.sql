-- Deploy extensions/pg_partman to pg

DO $$
BEGIN
  EXECUTE 'CREATE SCHEMA IF NOT EXISTS partman';
  EXECUTE 'CREATE EXTENSION pg_partman SCHEMA partman';
END;
$$;

-- pg_partman 5.x core functions run as SECURITY INVOKER, so the authenticated
-- role needs explicit grants to call create_parent and manage part_config.
-- USAGE+CREATE on schema: create_parent creates template tables here.
-- EXECUTE on functions: call partman.create_parent etc.
-- Table access: read/write part_config for retention settings.
GRANT USAGE, CREATE ON SCHEMA partman TO authenticated;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA partman TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA partman TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA partman GRANT EXECUTE ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA partman GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO authenticated;
