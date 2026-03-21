-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".threads 
  ADD COLUMN embedding vector(768);

