-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/event_id/alterations/alt0000000227


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN event_id DROP NOT NULL;


