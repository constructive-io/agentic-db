-- Revert schemas/ctx/procedures/uid from pg

BEGIN;

DROP FUNCTION ctx.uid;

COMMIT;

