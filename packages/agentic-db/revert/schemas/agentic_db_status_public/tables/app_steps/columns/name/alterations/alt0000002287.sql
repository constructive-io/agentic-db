-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/name/alterations/alt0000002287


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN name DROP NOT NULL;


