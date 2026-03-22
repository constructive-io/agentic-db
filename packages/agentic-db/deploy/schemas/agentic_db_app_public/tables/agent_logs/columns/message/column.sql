-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/message/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/level/alterations/alt0000001215


ALTER TABLE "agentic_db_app_public".agent_logs 
  ADD COLUMN message text;

