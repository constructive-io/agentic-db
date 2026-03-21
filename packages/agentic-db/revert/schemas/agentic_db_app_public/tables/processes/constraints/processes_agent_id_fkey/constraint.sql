-- Revert: schemas/agentic_db_app_public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE agentic_db_app_public.processes 
  DROP CONSTRAINT processes_agent_id_fkey;


