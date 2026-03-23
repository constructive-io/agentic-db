-- Revert schemas/metaschema_modules_public/procedures/compute_blueprint_hash/procedure from pg

BEGIN;

DROP TRIGGER IF EXISTS _200_compute_blueprint_hash ON metaschema_modules_public.blueprint;
DROP TRIGGER IF EXISTS _200_compute_blueprint_hash ON metaschema_modules_public.blueprint_template;
DROP FUNCTION IF EXISTS metaschema_modules_public.tg_compute_blueprint_hash();

COMMIT;
