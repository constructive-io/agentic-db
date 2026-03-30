-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/content/alterations/alt0000001756
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  ALTER COLUMN content SET NOT NULL;

