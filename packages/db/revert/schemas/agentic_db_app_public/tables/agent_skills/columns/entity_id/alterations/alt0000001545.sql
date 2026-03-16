-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/entity_id/alterations/alt0000001545


ALTER TABLE "agentic_db_app_public".agent_skills 
  ALTER COLUMN entity_id DROP NOT NULL;


