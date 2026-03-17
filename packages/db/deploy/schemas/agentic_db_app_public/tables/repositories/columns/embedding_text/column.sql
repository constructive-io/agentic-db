-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/tags/column


ALTER TABLE "agentic_db_app_public".repositories 
  ADD COLUMN embedding_text text;

