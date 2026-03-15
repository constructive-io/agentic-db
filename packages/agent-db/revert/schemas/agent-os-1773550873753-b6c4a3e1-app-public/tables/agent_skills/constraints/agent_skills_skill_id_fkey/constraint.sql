-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/constraints/agent_skills_skill_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  DROP CONSTRAINT agent_skills_skill_id_fkey;


