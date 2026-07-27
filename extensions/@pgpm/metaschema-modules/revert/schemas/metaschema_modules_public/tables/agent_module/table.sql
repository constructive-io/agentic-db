-- Revert schemas/metaschema_modules_public/tables/agent_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.agent_module;

COMMIT;
