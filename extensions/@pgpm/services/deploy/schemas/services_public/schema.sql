-- Deploy schemas/services_public/schema to pg


BEGIN;

CREATE SCHEMA services_public;

GRANT USAGE ON SCHEMA services_public TO authenticated;
GRANT USAGE ON SCHEMA services_public TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_public GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_public GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA services_public GRANT ALL ON FUNCTIONS TO administrator;


COMMIT;
