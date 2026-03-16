-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/tags/column


ALTER TABLE "agentic_db_app_public".notes 
  ADD COLUMN embedding_text text;

