-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/image_id/alterations/alt0000002819


ALTER TABLE agentic_db_app_public.event_images 
  ALTER COLUMN image_id DROP NOT NULL;


