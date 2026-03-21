-- Revert: schemas/agentic_db_app_public/tables/threads/columns/id/alterations/alt0000004136


ALTER TABLE agentic_db_app_public.threads 
  ALTER COLUMN id DROP NOT NULL;


