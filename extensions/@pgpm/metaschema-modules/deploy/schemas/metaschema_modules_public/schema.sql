-- Deploy schemas/metaschema_modules_public/schema to pg

BEGIN;

CREATE SCHEMA metaschema_modules_public;

GRANT USAGE ON SCHEMA metaschema_modules_public TO authenticated;
GRANT USAGE ON SCHEMA metaschema_modules_public TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public GRANT ALL ON FUNCTIONS TO administrator;

COMMIT;
