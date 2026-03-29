-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/content/alterations/alt0000005272


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN content DROP NOT NULL;


