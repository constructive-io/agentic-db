-- Revert schemas/metaschema_public/tables/node_type_registry/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.node_type_registry;

COMMIT;
