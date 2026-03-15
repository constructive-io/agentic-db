-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/columns/prompt_id/alterations/alt0000003167


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  ALTER COLUMN prompt_id DROP NOT NULL;


