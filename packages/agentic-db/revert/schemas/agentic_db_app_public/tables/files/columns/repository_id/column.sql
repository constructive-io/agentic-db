-- Revert: schemas/agentic_db_app_public/tables/files/columns/repository_id/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN repository_id RESTRICT;


