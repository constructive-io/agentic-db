-- Revert: schemas/agent_db_app_public/tables/skill_executions/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.skill_executions FROM authenticated;


