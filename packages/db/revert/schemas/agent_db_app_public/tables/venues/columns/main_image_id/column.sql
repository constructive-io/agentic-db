-- Revert: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN main_image_id RESTRICT;


