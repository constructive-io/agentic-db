-- Revert: schemas/agentic_db_app_public/tables/company_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".company_chunks FROM authenticated;


