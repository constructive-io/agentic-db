-- Revert schemas/inflection/procedures/dns_1123 from pg

BEGIN;

DROP FUNCTION inflection.dns_1123(text);

COMMIT;
