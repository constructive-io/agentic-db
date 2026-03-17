-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".ideas 
  ADD COLUMN embedding vector(768);

