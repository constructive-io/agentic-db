-- Revert: schemas/agent_db_app_public/tables/habits/columns/entity_id/alterations/alt0000002314


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN entity_id DROP NOT NULL;


