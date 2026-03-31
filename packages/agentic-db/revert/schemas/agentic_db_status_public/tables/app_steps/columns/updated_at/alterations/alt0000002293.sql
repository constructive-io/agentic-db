-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/updated_at/alterations/alt0000002293


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


