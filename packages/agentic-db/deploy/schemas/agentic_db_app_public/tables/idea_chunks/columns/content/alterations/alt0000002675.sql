-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/content/alterations/alt0000002675
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/chunk_index/alterations/alt0000002674


ALTER TABLE "agentic_db_app_public".idea_chunks 
  ALTER COLUMN content SET NOT NULL;

