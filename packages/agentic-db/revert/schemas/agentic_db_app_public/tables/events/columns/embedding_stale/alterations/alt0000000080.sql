-- Revert: schemas/agentic_db_app_public/tables/events/columns/embedding_stale/alterations/alt0000000080


ALTER TABLE agentic_db_app_public.events 
  ALTER COLUMN embedding_stale DROP NOT NULL;


