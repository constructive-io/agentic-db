-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/columns/agent_id/alterations/alt0000003154


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_skills 
  ALTER COLUMN agent_id DROP NOT NULL;


