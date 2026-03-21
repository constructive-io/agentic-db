-- Revert: schemas/agentic_db_app_public/tables/skill_executions/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.skill_executions FROM authenticated;


