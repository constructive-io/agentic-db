-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".codebases_chunks FROM authenticated;


