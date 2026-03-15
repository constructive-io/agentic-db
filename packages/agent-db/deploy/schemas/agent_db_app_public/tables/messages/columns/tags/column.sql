-- Deploy: schemas/agent_db_app_public/tables/messages/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/received_at/column


ALTER TABLE agent_db_app_public.messages 
  ADD COLUMN tags citext[];

