-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/name/column


ALTER TABLE agentic_db_status_public.app_steps 
  DROP COLUMN name RESTRICT;


