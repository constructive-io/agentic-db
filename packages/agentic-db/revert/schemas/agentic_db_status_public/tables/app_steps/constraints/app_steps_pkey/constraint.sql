-- Revert: schemas/agentic_db_status_public/tables/app_steps/constraints/app_steps_pkey/constraint


ALTER TABLE agentic_db_status_public.app_steps 
  DROP CONSTRAINT app_steps_pkey;


