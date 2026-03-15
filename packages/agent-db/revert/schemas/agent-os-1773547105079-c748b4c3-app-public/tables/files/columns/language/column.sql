-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/language/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  DROP COLUMN language RESTRICT;


