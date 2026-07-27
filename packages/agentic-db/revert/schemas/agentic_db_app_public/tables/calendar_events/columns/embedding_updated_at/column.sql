-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN embedding_updated_at RESTRICT;


