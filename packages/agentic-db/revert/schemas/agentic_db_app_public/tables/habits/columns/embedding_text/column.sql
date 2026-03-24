-- Revert: schemas/agentic_db_app_public/tables/habits/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN embedding_text RESTRICT;


