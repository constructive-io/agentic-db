-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_location_gist_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/entity_id/column


CREATE INDEX itinerary_items_entity_id_idx ON "agentic_db_app_public".itinerary_items USING BTREE ( entity_id );

