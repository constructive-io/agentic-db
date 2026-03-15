-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/columns/id/alterations/alt0000003168


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  ALTER COLUMN id DROP NOT NULL;


