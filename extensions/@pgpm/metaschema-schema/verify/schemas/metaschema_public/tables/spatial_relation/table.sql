-- Verify schemas/metaschema_public/tables/spatial_relation/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.spatial_relation');

ROLLBACK;
