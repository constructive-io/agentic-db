-- Revert: schemas/agentic_db_app_public/tables/place_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".place_chunks FROM authenticated;


