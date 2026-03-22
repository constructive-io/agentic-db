-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".codebase_dependencies FROM authenticated;


