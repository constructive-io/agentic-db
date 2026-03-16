-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".repositories 
  ADD COLUMN embedding vector(768);

