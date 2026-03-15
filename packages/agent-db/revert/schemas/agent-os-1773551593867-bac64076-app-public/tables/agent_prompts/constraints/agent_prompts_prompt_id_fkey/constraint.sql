-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/constraints/agent_prompts_prompt_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  DROP CONSTRAINT agent_prompts_prompt_id_fkey;


