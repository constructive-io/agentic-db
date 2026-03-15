-- Revert: schemas/agent_db_app_public/tables/chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".chunks FROM authenticated;


