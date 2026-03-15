-- Verify schemas/metaschema_private/schema  on pg

BEGIN;

SELECT verify_schema ('metaschema_private');

ROLLBACK;
