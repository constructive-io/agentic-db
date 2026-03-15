-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/agent_id/alterations/alt0000003214


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  ALTER COLUMN agent_id DROP NOT NULL;


