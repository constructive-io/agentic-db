-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/constraints/agent_skills_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_skills 
  DROP CONSTRAINT agent_skills_agent_id_fkey;


