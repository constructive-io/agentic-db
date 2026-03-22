-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/alterations/alt0000001580


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ADD COLUMN embedding_text text;

