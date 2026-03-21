-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".idea_chunks 
  ADD COLUMN embedding vector(768);

