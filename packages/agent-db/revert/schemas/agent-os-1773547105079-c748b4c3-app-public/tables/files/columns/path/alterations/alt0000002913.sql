-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/path/alterations/alt0000002913


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  ALTER COLUMN path DROP NOT NULL;


