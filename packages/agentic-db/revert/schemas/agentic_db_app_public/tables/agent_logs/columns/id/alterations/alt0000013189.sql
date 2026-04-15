-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/id/alterations/alt0000013189


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN id DROP NOT NULL;


