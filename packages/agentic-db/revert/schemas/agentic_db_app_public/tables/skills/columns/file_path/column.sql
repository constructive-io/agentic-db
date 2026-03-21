-- Revert: schemas/agentic_db_app_public/tables/skills/columns/file_path/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN file_path RESTRICT;


