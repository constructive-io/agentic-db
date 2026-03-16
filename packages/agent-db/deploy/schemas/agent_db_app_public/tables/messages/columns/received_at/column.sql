-- Deploy: schemas/agent_db_app_public/tables/messages/columns/received_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/body_text/column


ALTER TABLE "agent_db_app_public".messages 
  ADD COLUMN received_at timestamptz;

