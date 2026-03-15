-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/columns/entity_id/alterations/alt0000003206


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  ALTER COLUMN entity_id DROP NOT NULL;


