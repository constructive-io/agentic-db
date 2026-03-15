-- Revert: schemas/agent_db_app_public/tables/workflows/constraints/workflows_pkey/constraint


ALTER TABLE agent_db_app_public.workflows 
  DROP CONSTRAINT workflows_pkey;


