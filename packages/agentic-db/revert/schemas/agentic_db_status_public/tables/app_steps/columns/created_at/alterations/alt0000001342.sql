-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/created_at/alterations/alt0000001342


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN created_at DROP DEFAULT;


