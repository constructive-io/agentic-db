-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/skills_used/column


ALTER TABLE "agentic_db_app_public".sessions 
  ADD COLUMN embedding_text text;

