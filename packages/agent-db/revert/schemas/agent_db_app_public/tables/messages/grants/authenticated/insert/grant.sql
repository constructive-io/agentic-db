-- Revert: schemas/agent_db_app_public/tables/messages/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".messages FROM authenticated;


