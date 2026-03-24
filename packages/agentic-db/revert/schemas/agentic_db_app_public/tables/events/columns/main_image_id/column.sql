-- Revert: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN main_image_id RESTRICT;


