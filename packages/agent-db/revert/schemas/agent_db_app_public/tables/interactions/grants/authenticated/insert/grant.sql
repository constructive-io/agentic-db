-- Revert: schemas/agent_db_app_public/tables/interactions/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".interactions FROM authenticated;


