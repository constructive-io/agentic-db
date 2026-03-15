-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/columns/agent_id/alterations/alt0000003202


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  ALTER COLUMN agent_id DROP NOT NULL;


