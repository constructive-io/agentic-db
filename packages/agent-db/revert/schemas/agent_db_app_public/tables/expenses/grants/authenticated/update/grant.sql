-- Revert: schemas/agent_db_app_public/tables/expenses/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".expenses FROM authenticated;


