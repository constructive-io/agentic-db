-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/id/alterations/alt0000002170


ALTER TABLE agentic_db_app_public.event_chunks 
  ALTER COLUMN id DROP NOT NULL;


