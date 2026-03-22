-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/message/alterations/alt0000001216


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN message DROP NOT NULL;


