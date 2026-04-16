-- Revert: schemas/agentic_db_app_public/tables/projects/columns/created_at/alterations/alt0000000460


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN created_at DROP NOT NULL;


