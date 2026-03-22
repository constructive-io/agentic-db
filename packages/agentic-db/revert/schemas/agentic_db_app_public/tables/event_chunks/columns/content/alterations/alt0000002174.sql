-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/content/alterations/alt0000002174


ALTER TABLE agentic_db_app_public.event_chunks 
  ALTER COLUMN content DROP NOT NULL;


