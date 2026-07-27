-- Revert schemas/partman/triggers/after_insert_partition from pg

BEGIN;

DROP TRIGGER IF EXISTS partman_after_insert_partition ON metaschema_public.partition;
DROP FUNCTION IF EXISTS partman.tg_after_insert_partition();

COMMIT;
