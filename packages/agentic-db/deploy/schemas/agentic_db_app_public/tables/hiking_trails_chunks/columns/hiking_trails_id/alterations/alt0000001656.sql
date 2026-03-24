-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trails_id/alterations/alt0000001656
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trails_id/column


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  ALTER COLUMN hiking_trails_id SET NOT NULL;

