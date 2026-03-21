-- Revert: schemas/agentic_db_app_public/tables/processes/columns/created_at/column


ALTER TABLE agentic_db_app_public.processes 
  DROP COLUMN created_at RESTRICT;


