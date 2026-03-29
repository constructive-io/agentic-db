-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/id/alterations/alt0000010440


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN id DROP NOT NULL;


