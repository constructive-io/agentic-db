-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_location_gist_idx


GRANT UPDATE ON "agentic_db_app_public".itinerary_items TO authenticated;

