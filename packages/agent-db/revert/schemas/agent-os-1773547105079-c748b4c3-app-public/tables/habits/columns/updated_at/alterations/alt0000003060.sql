-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/updated_at/alterations/alt0000003060


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ALTER COLUMN updated_at DROP NOT NULL;


