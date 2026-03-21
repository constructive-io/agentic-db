-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/content/alterations/alt0000002323


ALTER TABLE "agentic_db_app_public".blueprint_chunks 
  ADD COLUMN embedding_text text;

