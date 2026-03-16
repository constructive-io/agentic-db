-- Revert: schemas/agent_db_app_public/tables/expenses/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".expenses FROM authenticated;


