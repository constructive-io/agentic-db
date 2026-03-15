-- Deploy: schemas/agent_db_app_public/tables/messages/columns/body_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/subject/column


ALTER TABLE agent_db_app_public.messages 
  ADD COLUMN body_text text;

