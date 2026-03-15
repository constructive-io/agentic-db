-- Revert: schemas/agent_db_app_public/tables/trips/columns/entity_id/alterations/alt0000004636


ALTER TABLE "agent_db_app_public".trips 
  ALTER COLUMN entity_id DROP NOT NULL;


