-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.project_chunks 
  DROP COLUMN embedding_text RESTRICT;


