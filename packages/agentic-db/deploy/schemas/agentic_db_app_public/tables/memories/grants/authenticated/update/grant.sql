-- Deploy: schemas/agentic_db_app_public/tables/memories/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_location_gist_idx


GRANT UPDATE ON agentic_db_app_public.memories TO authenticated;

