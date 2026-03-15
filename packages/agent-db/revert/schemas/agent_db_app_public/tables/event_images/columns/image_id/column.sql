-- Revert: schemas/agent_db_app_public/tables/event_images/columns/image_id/column


ALTER TABLE "agent_db_app_public".event_images 
  DROP COLUMN image_id RESTRICT;


