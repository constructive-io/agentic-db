-- Revert: schemas/agentic_db_app_public/tables/projects/columns/id/alterations/alt0000002662


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN id DROP NOT NULL;


