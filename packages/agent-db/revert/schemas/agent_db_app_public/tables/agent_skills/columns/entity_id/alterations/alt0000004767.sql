-- Revert: schemas/agent_db_app_public/tables/agent_skills/columns/entity_id/alterations/alt0000004767


ALTER TABLE "agent_db_app_public".agent_skills 
  ALTER COLUMN entity_id DROP NOT NULL;


