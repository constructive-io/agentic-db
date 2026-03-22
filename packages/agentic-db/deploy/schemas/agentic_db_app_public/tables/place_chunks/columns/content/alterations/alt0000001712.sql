-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/content/alterations/alt0000001712
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/chunk_index/alterations/alt0000001711


ALTER TABLE "agentic_db_app_public".place_chunks 
  ALTER COLUMN content SET NOT NULL;

