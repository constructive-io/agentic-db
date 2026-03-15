-- Revert schemas/ctx/procedures/uagent from pg

BEGIN;

DROP FUNCTION ctx.uagent;

COMMIT;

