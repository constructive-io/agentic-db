-- Revert: schemas/agent_db_app_public/tables/venues/columns/entity_id/alterations/alt0000004069


ALTER TABLE "agent_db_app_public".venues 
  ALTER COLUMN entity_id DROP NOT NULL;


