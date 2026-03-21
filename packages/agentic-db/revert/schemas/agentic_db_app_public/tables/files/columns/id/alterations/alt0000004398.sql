-- Revert: schemas/agentic_db_app_public/tables/files/columns/id/alterations/alt0000004398


ALTER TABLE agentic_db_app_public.files 
  ALTER COLUMN id DROP NOT NULL;


