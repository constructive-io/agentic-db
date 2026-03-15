-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  DROP COLUMN id RESTRICT;


