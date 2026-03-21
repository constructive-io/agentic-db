-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN created_at RESTRICT;


