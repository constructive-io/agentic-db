-- Verify schemas/metaschema_modules_public/schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('metaschema_modules_public', 'usage');

ROLLBACK;
