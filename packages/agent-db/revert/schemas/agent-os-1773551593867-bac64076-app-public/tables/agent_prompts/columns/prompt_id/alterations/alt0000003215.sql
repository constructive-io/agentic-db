-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/prompt_id/alterations/alt0000003215


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  ALTER COLUMN prompt_id DROP NOT NULL;


