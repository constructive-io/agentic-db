-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/message/alterations/alt0000000281


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN message DROP NOT NULL;


