-- Revert: schemas/agentic_db_app_public/tables/skill_executions/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".skill_executions FROM authenticated;


