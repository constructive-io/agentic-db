-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/name/alterations/alt0000002783


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ALTER COLUMN name DROP NOT NULL;


