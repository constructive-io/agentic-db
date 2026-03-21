-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/content/alterations/alt0000002038


ALTER TABLE "agentic_db_app_public".task_chunks 
  ADD COLUMN embedding_text text;

