-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/entity_id/alterations/alt0000003218


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


