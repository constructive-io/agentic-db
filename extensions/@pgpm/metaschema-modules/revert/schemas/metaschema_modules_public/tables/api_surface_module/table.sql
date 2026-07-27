-- Revert schemas/metaschema_modules_public/tables/api_surface_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.api_surface_module;

COMMIT;
