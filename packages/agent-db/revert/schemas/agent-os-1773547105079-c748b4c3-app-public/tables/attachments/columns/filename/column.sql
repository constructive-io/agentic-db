-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/filename/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  DROP COLUMN filename RESTRICT;


