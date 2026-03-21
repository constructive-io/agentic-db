-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/count/alterations/alt0000003002


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN count DROP NOT NULL;


