-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/columns/entity_id/alterations/alt0000003158


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_skills 
  ALTER COLUMN entity_id DROP NOT NULL;


