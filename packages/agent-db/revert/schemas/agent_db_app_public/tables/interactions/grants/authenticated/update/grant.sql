-- Revert: schemas/agent_db_app_public/tables/interactions/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".interactions FROM authenticated;


