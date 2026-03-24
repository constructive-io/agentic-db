-- Revert schemas/metaschema_modules_public/procedures/validate_blueprint_definition/procedure from pg

BEGIN;

DROP TRIGGER IF EXISTS _100_validate_blueprint_definition ON metaschema_modules_public.blueprint;
DROP TRIGGER IF EXISTS _100_validate_blueprint_definition ON metaschema_modules_public.blueprint_template;
DROP FUNCTION IF EXISTS metaschema_modules_public.tg_validate_blueprint_definition;

COMMIT;
