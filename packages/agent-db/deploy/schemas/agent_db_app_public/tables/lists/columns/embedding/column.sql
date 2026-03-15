-- Deploy: schemas/agent_db_app_public/tables/lists/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".lists 
  ADD COLUMN embedding vector(768);

