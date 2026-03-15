-- Revert: schemas/agent_db_app_public/tables/processes/columns/created_at/column


ALTER TABLE agent_db_app_public.processes 
  DROP COLUMN created_at RESTRICT;


