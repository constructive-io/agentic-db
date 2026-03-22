-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/id/alterations/alt0000002674


ALTER TABLE agentic_db_app_public.project_chunks 
  ALTER COLUMN id DROP NOT NULL;


