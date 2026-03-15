-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/columns/skill_id/alterations/alt0000003203


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  ALTER COLUMN skill_id DROP NOT NULL;


