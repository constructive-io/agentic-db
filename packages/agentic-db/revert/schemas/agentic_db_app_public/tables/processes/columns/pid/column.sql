-- Revert: schemas/agentic_db_app_public/tables/processes/columns/pid/column


ALTER TABLE agentic_db_app_public.processes 
  DROP COLUMN pid RESTRICT;


