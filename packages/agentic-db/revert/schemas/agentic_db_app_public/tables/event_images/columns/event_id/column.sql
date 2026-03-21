-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/event_id/column


ALTER TABLE agentic_db_app_public.event_images 
  DROP COLUMN event_id RESTRICT;


