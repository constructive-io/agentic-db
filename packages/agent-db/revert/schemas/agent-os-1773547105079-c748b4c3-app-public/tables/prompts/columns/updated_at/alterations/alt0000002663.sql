-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/updated_at/alterations/alt0000002663


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN updated_at DROP NOT NULL;


