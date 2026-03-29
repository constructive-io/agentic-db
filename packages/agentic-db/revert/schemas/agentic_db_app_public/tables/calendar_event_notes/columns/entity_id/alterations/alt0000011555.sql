-- Revert: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/entity_id/alterations/alt0000011555


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


