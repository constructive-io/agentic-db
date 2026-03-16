-- Revert: schemas/agent_db_app_public/tables/event_images/columns/image_id/alterations/alt0000001840


ALTER TABLE "agent_db_app_public".event_images 
  ALTER COLUMN image_id DROP NOT NULL;


