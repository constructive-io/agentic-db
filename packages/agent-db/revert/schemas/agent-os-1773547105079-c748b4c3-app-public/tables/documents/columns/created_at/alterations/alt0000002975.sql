-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/created_at/alterations/alt0000002975


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ALTER COLUMN created_at DROP NOT NULL;


