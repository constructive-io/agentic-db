-- Revert: schemas/agent_db_app_public/tables/event_images/columns/entity_id/alterations/alt0000002671


ALTER TABLE "agent_db_app_public".event_images 
  ALTER COLUMN entity_id DROP NOT NULL;


