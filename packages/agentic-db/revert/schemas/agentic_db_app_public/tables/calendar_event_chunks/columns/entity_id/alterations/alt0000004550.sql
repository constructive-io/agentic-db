-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/entity_id/alterations/alt0000004550


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


