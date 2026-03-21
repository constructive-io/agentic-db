-- Revert: schemas/agentic_db_app_public/tables/skill_executions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.skill_executions FROM authenticated;


