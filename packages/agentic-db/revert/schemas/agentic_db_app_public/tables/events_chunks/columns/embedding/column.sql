-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.events_chunks 
  DROP COLUMN embedding RESTRICT;


