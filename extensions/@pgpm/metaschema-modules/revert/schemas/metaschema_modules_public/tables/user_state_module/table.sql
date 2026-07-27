-- Revert schemas/metaschema_modules_public/tables/user_state_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.user_state_module;

COMMIT;
