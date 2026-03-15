-- Verify schemas/ctx/procedures/uid on pg

BEGIN;

SELECT verify_function ('ctx.uid');

ROLLBACK;

