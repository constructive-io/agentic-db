-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.event_chunks 
  DROP COLUMN embedding_stale RESTRICT;


