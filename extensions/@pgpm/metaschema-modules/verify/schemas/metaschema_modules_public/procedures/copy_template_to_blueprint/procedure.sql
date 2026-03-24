-- Verify schemas/metaschema_modules_public/procedures/copy_template_to_blueprint/procedure on pg

BEGIN;

SELECT verify_function ('metaschema_modules_public.copy_template_to_blueprint');

ROLLBACK;
