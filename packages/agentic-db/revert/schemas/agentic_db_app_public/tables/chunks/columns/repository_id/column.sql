-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/repository_id/column


ALTER TABLE agentic_db_app_public.chunks 
  DROP COLUMN repository_id RESTRICT;


