-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/constraints/agent_prompts_prompt_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  DROP CONSTRAINT agent_prompts_prompt_id_fkey;


