-- Revert: schemas/agentic_db_app_public/tables/expenses/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".expenses FROM authenticated;


