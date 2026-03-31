-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_trailhead_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/trailhead_geo/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX hiking_trails_trailhead_geo_gist_idx ON "agentic_db_app_public".hiking_trails USING GIST ( trailhead_geo );

