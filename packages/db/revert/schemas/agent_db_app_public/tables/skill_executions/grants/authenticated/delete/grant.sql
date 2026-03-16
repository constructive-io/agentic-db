-- Revert: schemas/agent_db_app_public/tables/skill_executions/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".skill_executions FROM authenticated;


