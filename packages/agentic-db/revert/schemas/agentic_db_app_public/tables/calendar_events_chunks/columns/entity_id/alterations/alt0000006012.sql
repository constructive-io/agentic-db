-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/entity_id/alterations/alt0000006012


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


