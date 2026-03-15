-- Revert: schemas/agent_db_app_public/tables/recipes/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".recipes FROM authenticated;


