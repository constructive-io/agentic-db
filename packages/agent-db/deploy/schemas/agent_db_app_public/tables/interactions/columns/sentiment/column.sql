-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/sentiment/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/summary/column


ALTER TABLE agent_db_app_public.interactions 
  ADD COLUMN sentiment text;

