-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/agent_log_id/alterations/alt0000002211


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ALTER COLUMN agent_log_id DROP NOT NULL;


