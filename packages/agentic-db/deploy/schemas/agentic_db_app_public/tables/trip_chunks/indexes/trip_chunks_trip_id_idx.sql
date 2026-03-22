-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_trip_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/trip_id/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_place_id_idx


CREATE INDEX trip_chunks_trip_id_idx ON "agentic_db_app_public".trip_chunks USING BTREE ( trip_id );

