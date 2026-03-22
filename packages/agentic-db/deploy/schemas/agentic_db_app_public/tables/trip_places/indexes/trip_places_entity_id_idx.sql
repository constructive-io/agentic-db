-- Deploy: schemas/agentic_db_app_public/tables/trip_places/indexes/trip_places_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_habit_id_idx


CREATE INDEX trip_places_entity_id_idx ON "agentic_db_app_public".trip_places USING BTREE ( entity_id );

