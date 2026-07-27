-- Verify extensions/pg_partman on pg

BEGIN;

SELECT 1 FROM pg_extension WHERE extname = 'pg_partman';
SELECT 1 FROM pg_namespace WHERE nspname = 'partman';

ROLLBACK;
