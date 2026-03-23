-- Verify schemas/metaschema_modules_public/procedures/construct_blueprint/procedure on pg

BEGIN;

SELECT verify_function ('metaschema_modules_public.construct_blueprint');

ROLLBACK;
