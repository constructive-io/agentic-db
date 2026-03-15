-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/content/alterations/alt0000002666


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN content DROP NOT NULL;


