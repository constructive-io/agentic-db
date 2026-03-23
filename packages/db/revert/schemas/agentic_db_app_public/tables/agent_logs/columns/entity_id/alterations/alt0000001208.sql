-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/alterations/alt0000001208


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


