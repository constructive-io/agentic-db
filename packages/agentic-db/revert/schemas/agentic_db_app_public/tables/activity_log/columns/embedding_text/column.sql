-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.activity_log 
  DROP COLUMN embedding_text RESTRICT;


