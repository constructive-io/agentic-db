-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".blueprint_chunks FROM authenticated;


