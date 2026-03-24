-- Revert: schemas/agentic_db_app_public/tables/places/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".places FROM authenticated;


