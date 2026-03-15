-- Revert: schemas/agent_db_app_public/tables/skills/columns/entity_id/alterations/alt0000004294


ALTER TABLE "agent_db_app_public".skills 
  ALTER COLUMN entity_id DROP NOT NULL;


