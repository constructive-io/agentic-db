-- Revert schemas/metaschema_modules_public/procedures/construct_blueprint/procedure from pg

BEGIN;

DROP FUNCTION IF EXISTS metaschema_modules_public.construct_blueprint;

COMMIT;
