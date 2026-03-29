-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.event_links 
  DROP COLUMN embedding_stale RESTRICT;


