-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".conversations 
  ADD COLUMN embedding vector(768);

