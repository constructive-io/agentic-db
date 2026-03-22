-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_location_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/location/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/triggers/hiking_trails_enqueue_embedding_update_tg


CREATE INDEX hiking_trails_location_gist_idx ON agentic_db_app_public.hiking_trails USING GIST ( location );

