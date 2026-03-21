-- Revert: schemas/agentic_db_app_public/tables/processes/constraints/processes_pkey/constraint


ALTER TABLE agentic_db_app_public.processes 
  DROP CONSTRAINT processes_pkey;


