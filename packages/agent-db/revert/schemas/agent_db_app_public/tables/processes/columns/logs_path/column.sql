-- Revert: schemas/agent_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE agent_db_app_public.processes 
  DROP COLUMN logs_path RESTRICT;


