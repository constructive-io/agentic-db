-- Revert: schemas/agentic_db_app_public/tables/events/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN embedding_text RESTRICT;


