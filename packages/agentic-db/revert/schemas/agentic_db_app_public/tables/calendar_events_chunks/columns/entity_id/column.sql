-- Revert: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  DROP COLUMN entity_id RESTRICT;


