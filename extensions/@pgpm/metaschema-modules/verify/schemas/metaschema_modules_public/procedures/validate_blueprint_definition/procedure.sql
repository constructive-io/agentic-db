-- Verify schemas/metaschema_modules_public/procedures/validate_blueprint_definition/procedure on pg

BEGIN;

SELECT verify_function ('metaschema_modules_public.tg_validate_blueprint_definition');

ROLLBACK;
