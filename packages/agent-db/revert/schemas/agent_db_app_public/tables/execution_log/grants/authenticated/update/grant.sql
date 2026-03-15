-- Revert: schemas/agent_db_app_public/tables/execution_log/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.execution_log FROM authenticated;


