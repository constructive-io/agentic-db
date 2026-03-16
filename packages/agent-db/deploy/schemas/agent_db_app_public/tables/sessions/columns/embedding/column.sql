-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".sessions 
  ADD COLUMN embedding vector(768);

