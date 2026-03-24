-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/alterations/alt0000001248


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN agent_id DROP NOT NULL;


