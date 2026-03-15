-- Revert: schemas/agent_db_app_public/tables/skill_executions/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.skill_executions FROM authenticated;


