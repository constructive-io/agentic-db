-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/title/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  DROP COLUMN title RESTRICT;


