-- Revert schemas/metaschema_modules_public/procedures/copy_template_to_blueprint/procedure from pg

BEGIN;

DROP FUNCTION IF EXISTS metaschema_modules_public.copy_template_to_blueprint;

COMMIT;
