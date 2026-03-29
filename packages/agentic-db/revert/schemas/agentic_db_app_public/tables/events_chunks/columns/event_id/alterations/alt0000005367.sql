-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/event_id/alterations/alt0000005367


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN event_id DROP NOT NULL;


