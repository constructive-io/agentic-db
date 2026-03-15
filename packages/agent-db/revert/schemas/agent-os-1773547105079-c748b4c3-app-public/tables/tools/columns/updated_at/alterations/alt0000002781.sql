-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/updated_at/alterations/alt0000002781


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ALTER COLUMN updated_at DROP NOT NULL;


