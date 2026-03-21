-- Revert: schemas/agentic_db_app_public/tables/files/columns/path/alterations/alt0000004405


ALTER TABLE agentic_db_app_public.files 
  ALTER COLUMN path DROP NOT NULL;


