-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/tags/column


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN embedding_text text;

