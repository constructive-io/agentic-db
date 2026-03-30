-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".expenses_chunks FROM authenticated;


