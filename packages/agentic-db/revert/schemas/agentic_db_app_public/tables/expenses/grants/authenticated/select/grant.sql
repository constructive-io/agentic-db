-- Revert: schemas/agentic_db_app_public/tables/expenses/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".expenses FROM authenticated;


