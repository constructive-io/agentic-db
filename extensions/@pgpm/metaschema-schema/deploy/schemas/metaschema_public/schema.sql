-- Deploy schemas/metaschema_public/schema to pg

BEGIN;

CREATE SCHEMA metaschema_public;

GRANT USAGE ON SCHEMA metaschema_public TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_public GRANT ALL ON FUNCTIONS TO authenticated;

COMMIT;
