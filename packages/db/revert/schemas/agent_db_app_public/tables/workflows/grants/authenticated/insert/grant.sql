-- Revert: schemas/agent_db_app_public/tables/workflows/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".workflows FROM authenticated;


