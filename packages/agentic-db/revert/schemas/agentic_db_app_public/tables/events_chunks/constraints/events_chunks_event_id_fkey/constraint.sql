-- Revert: schemas/agentic_db_app_public/tables/events_chunks/constraints/events_chunks_event_id_fkey/constraint


ALTER TABLE agentic_db_app_public.events_chunks 
  DROP CONSTRAINT events_chunks_event_id_fkey;


