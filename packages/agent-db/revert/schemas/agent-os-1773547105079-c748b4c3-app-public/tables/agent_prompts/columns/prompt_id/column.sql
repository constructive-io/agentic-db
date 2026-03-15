-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/columns/prompt_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  DROP COLUMN prompt_id RESTRICT;


