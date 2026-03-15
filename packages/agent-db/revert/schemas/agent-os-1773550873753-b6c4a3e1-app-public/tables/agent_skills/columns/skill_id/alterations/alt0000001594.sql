-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/columns/skill_id/alterations/alt0000001594


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  ALTER COLUMN skill_id DROP NOT NULL;


