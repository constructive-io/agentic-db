-- Deploy schemas/metaschema_private/schema to pg

BEGIN;

CREATE SCHEMA metaschema_private;

GRANT USAGE ON SCHEMA metaschema_private TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_private GRANT ALL ON FUNCTIONS TO authenticated;

COMMIT;
