-- Revert: schemas/agentic_db_app_public/tables/place_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".place_chunks FROM authenticated;


