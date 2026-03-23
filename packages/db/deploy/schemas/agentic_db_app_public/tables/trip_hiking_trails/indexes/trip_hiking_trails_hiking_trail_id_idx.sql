-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/indexes/trip_hiking_trails_hiking_trail_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/column


CREATE INDEX trip_hiking_trails_hiking_trail_id_idx ON "agentic_db_app_public".trip_hiking_trails USING BTREE ( hiking_trail_id );

