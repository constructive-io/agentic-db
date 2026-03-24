-- Revert schemas/metaschema_public/tables/enum/table from pg

BEGIN;

DROP TABLE metaschema_public.enum;

COMMIT;
