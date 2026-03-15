-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/updated_at/alterations/alt0000002977


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ALTER COLUMN updated_at DROP NOT NULL;


