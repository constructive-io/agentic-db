-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/saved_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  DROP COLUMN saved_at RESTRICT;


