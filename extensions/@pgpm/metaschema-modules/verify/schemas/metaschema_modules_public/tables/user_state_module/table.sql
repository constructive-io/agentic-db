-- Verify schemas/metaschema_modules_public/tables/user_state_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.user_state_module');

ROLLBACK;
