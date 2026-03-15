-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/created_at/alterations/alt0000002493


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  ALTER COLUMN created_at DROP NOT NULL;


