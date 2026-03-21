-- Revert: schemas/agentic_db_app_public/tables/files/columns/id/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN id RESTRICT;


