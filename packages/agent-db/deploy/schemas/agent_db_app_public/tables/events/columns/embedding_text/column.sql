-- Deploy: schemas/agent_db_app_public/tables/events/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/tags/column


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN embedding_text text;

