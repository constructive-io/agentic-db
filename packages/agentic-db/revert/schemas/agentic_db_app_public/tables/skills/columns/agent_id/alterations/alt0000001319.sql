-- Revert: schemas/agentic_db_app_public/tables/skills/columns/agent_id/alterations/alt0000001319


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN agent_id DROP NOT NULL;


