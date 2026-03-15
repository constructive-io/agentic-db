-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/id/alterations/alt0000002658


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN id DROP NOT NULL;


