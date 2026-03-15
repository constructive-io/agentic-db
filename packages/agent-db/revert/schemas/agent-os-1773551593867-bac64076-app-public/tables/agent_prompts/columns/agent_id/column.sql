-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/agent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  DROP COLUMN agent_id RESTRICT;


