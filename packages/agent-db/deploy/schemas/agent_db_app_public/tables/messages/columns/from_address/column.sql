-- Deploy: schemas/agent_db_app_public/tables/messages/columns/from_address/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/remote_id/column


ALTER TABLE agent_db_app_public.messages 
  ADD COLUMN from_address text;

