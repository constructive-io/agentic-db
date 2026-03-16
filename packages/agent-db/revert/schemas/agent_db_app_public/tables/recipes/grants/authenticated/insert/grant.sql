-- Revert: schemas/agent_db_app_public/tables/recipes/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".recipes FROM authenticated;


