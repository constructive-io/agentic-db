-- Revert: schemas/agent_db_status_public/tables/org_steps/constraints/org_steps_pkey/constraint


ALTER TABLE agent_db_status_public.org_steps 
  DROP CONSTRAINT org_steps_pkey;


