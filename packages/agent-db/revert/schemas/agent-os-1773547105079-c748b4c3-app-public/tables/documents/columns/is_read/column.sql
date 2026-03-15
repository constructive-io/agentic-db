-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/is_read/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  DROP COLUMN is_read RESTRICT;


