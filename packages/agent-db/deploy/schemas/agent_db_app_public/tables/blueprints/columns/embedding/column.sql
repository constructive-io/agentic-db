-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".blueprints 
  ADD COLUMN embedding vector(768);

