-- Revert: schemas/agent_db_app_public/tables/tasks/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".tasks FROM authenticated;


