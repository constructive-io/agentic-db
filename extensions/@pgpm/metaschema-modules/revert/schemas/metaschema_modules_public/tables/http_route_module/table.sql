-- Revert schemas/metaschema_modules_public/tables/http_route_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.http_route_module;

COMMIT;
