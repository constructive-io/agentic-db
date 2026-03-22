-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/entity_id/alterations/alt0000002025


ALTER TABLE "agentic_db_app_public".event_images 
  ALTER COLUMN entity_id DROP NOT NULL;


