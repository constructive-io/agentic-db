-- Revert: schemas/agent_db_app_public/tables/recipes/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".recipes FROM authenticated;


