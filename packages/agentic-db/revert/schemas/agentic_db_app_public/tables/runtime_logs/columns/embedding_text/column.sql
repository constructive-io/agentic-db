-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP COLUMN embedding_text RESTRICT;


