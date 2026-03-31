-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_location_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX memories_location_geo_gist_idx ON agentic_db_app_public.memories USING GIST ( location_geo );

