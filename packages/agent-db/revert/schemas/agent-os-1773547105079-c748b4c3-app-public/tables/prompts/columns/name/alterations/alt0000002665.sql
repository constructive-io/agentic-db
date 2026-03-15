-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/name/alterations/alt0000002665


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN name DROP NOT NULL;


