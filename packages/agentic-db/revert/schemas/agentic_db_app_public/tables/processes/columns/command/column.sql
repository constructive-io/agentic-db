-- Revert: schemas/agentic_db_app_public/tables/processes/columns/command/column


ALTER TABLE agentic_db_app_public.processes 
  DROP COLUMN command RESTRICT;


