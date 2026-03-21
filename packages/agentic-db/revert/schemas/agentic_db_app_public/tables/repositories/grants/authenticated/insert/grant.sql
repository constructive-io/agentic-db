-- Revert: schemas/agentic_db_app_public/tables/repositories/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".repositories FROM authenticated;


