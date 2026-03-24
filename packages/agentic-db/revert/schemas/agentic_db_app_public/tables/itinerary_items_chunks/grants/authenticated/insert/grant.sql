-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".itinerary_items_chunks FROM authenticated;


