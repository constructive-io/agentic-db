-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/agent_id/alterations/alt0000001269


ALTER TABLE "agentic_db_app_public".agent_tools 
  ALTER COLUMN agent_id DROP NOT NULL;


