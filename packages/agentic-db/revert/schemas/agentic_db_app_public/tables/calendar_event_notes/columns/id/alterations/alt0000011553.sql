-- Revert: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/id/alterations/alt0000011553


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  ALTER COLUMN id DROP NOT NULL;


