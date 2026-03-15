-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/tags/column


ALTER TABLE agent_db_app_public.interactions 
  ADD COLUMN embedding_text text;

