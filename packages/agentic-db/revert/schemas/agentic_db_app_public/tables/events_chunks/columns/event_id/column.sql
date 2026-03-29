-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/event_id/column


ALTER TABLE agentic_db_app_public.events_chunks 
  DROP COLUMN event_id RESTRICT;


