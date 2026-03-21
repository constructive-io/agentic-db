-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN content RESTRICT;


