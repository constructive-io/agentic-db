-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/tags/column


ALTER TABLE agent_db_app_public.blueprints 
  ADD COLUMN embedding_text text;

