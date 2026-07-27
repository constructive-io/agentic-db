-- Verify schemas/inflection/procedures/dns_1123  on pg

BEGIN;

SELECT verify_function ('inflection.dns_1123');

ROLLBACK;
