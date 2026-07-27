-- Revert schemas/metaschema_modules_public/tables/site_surface_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.site_surface_module;

COMMIT;
