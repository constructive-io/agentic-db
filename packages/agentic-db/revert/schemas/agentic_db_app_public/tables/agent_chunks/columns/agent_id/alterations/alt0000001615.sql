-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/agent_id/alterations/alt0000001615


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN agent_id DROP NOT NULL;


