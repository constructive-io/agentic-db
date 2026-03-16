-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".interactions 
  ADD COLUMN embedding vector(768);

