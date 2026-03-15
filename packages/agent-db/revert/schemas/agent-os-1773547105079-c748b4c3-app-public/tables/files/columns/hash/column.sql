-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/hash/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  DROP COLUMN hash RESTRICT;


