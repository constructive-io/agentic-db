-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN updated_at RESTRICT;


