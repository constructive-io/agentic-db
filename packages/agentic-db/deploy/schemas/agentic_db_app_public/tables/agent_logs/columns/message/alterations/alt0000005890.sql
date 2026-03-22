-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/message/alterations/alt0000005890
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/message/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/level/alterations/alt0000005889


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN message SET NOT NULL;

