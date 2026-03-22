-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding_stale/alterations/alt0000002180


ALTER TABLE agentic_db_app_public.event_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


