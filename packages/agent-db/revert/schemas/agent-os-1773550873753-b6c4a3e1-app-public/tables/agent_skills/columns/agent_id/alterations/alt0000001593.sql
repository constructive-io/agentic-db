-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/columns/agent_id/alterations/alt0000001593


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  ALTER COLUMN agent_id DROP NOT NULL;


