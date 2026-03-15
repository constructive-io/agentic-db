-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/updated_at/alterations/alt0000002902


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ALTER COLUMN updated_at DROP NOT NULL;


