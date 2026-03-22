-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/entity_id/alterations/alt0000001648
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_location_gist_idx


ALTER TABLE "agentic_db_app_public".memories 
  ALTER COLUMN entity_id SET NOT NULL;

