-- Revert: schemas/agentic_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE agentic_db_app_public.files 
  DROP CONSTRAINT files_repository_id_fkey;


