-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/constraints/agent_skills_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  DROP CONSTRAINT agent_skills_agent_id_fkey;


