-- Deploy: schemas/agentic_db_app_public/tables/memories/alterations/alt0000001645
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_location_gist_idx


ALTER TABLE "agentic_db_app_public".memories 
  DISABLE ROW LEVEL SECURITY;

