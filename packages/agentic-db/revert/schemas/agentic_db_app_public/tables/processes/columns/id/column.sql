-- Revert: schemas/agentic_db_app_public/tables/processes/columns/id/column


ALTER TABLE agentic_db_app_public.processes 
  DROP COLUMN id RESTRICT;


