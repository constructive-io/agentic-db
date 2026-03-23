-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/events_id/alterations/alt0000002663


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN events_id DROP NOT NULL;


