-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_stale/alterations/alt0000011314


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN embedding_stale DROP NOT NULL;


