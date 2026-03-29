-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/event_id/alterations/alt0000003561


ALTER TABLE agentic_db_app_public.event_images 
  ALTER COLUMN event_id DROP NOT NULL;


