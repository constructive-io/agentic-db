-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/updated_at/column


ALTER TABLE agentic_db_status_public.app_steps 
  DROP COLUMN updated_at RESTRICT;


