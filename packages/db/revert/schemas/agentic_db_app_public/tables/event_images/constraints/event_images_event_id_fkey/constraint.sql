-- Revert: schemas/agentic_db_app_public/tables/event_images/constraints/event_images_event_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".event_images 
  DROP CONSTRAINT event_images_event_id_fkey;


