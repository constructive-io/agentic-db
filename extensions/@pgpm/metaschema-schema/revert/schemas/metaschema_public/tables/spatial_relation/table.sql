-- Revert schemas/metaschema_public/tables/spatial_relation/table from pg

BEGIN;

DROP TABLE metaschema_public.spatial_relation;

COMMIT;
