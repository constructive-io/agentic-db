-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/constraints/workflow_steps_pkey/constraint


ALTER TABLE agentic_db_app_public.workflow_steps 
  DROP CONSTRAINT workflow_steps_pkey;


