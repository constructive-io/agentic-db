-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/id/alterations/alt0000003278


ALTER TABLE agentic_db_app_public.event_images 
  ALTER COLUMN id DROP NOT NULL;


