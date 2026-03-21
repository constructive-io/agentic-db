-- Revert: schemas/agentic_db_app_public/tables/recipes/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".recipes FROM authenticated;


