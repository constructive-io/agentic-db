-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN id RESTRICT;


