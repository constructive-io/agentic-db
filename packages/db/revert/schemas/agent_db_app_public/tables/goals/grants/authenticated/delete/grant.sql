-- Revert: schemas/agent_db_app_public/tables/goals/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".goals FROM authenticated;


