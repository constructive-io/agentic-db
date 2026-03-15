-- Revert: schemas/agent_db_app_public/tables/venue_images/columns/entity_id/alterations/alt0000002677


ALTER TABLE "agent_db_app_public".venue_images 
  ALTER COLUMN entity_id DROP NOT NULL;


