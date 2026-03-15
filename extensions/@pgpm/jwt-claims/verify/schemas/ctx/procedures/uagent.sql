-- Verify schemas/ctx/procedures/uagent on pg

BEGIN;

SELECT verify_function ('ctx.uagent');

ROLLBACK;

