-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN repository_id RESTRICT;


