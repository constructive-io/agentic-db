-- Revert: schemas/agent_db_app_public/tables/processes/constraints/processes_pkey/constraint


ALTER TABLE agent_db_app_public.processes 
  DROP CONSTRAINT processes_pkey;


