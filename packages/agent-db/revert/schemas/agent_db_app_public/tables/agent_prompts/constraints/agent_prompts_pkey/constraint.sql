-- Revert: schemas/agent_db_app_public/tables/agent_prompts/constraints/agent_prompts_pkey/constraint


ALTER TABLE agent_db_app_public.agent_prompts 
  DROP CONSTRAINT agent_prompts_pkey;


