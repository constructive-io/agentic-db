-- Verify schemas/metaschema_modules_public/tables/http_route_module/table on pg

BEGIN;

SELECT id, database_id, scope, http_routes_table_id
FROM metaschema_modules_public.http_route_module
WHERE false;

ROLLBACK;
