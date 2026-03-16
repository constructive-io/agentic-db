-- Revert: schemas/agent_db_app_public/tables/interactions/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".interactions FROM authenticated;


