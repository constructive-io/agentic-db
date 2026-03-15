-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/columns/prompt_id/alterations/alt0000001606


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_prompts 
  ALTER COLUMN prompt_id DROP NOT NULL;


