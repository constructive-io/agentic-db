-- Revert: schemas/agent_db_app_public/tables/processes/columns/id/column


ALTER TABLE agent_db_app_public.processes 
  DROP COLUMN id RESTRICT;


