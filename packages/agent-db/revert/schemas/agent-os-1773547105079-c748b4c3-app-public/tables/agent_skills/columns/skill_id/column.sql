-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/columns/skill_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_skills 
  DROP COLUMN skill_id RESTRICT;


