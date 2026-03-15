-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/columns/skill_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  DROP COLUMN skill_id RESTRICT;


