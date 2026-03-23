-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/created_at/alterations/alt0000002668


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


