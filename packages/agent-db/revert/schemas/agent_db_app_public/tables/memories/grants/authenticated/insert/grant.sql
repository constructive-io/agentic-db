-- Revert: schemas/agent_db_app_public/tables/memories/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".memories FROM authenticated;


