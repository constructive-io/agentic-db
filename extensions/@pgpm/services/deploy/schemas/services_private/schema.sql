-- Deploy schemas/services_private/schema to pg


BEGIN;

CREATE SCHEMA services_private;

GRANT USAGE ON SCHEMA services_private TO authenticated;
GRANT USAGE ON SCHEMA services_private TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_private GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_private GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_private GRANT ALL ON FUNCTIONS TO administrator;

COMMIT;
