-- Revert: schemas/agent_db_app_public/tables/processes/columns/started_at/column


ALTER TABLE agent_db_app_public.processes 
  DROP COLUMN started_at RESTRICT;


