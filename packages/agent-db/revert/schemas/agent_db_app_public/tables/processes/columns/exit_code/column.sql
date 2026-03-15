-- Revert: schemas/agent_db_app_public/tables/processes/columns/exit_code/column


ALTER TABLE agent_db_app_public.processes 
  DROP COLUMN exit_code RESTRICT;


