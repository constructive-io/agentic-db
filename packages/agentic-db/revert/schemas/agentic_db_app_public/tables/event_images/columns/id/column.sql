-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/id/column


ALTER TABLE agentic_db_app_public.event_images 
  DROP COLUMN id RESTRICT;


