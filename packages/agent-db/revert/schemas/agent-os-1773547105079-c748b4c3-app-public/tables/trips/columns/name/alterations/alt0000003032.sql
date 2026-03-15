-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/name/alterations/alt0000003032


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  ALTER COLUMN name DROP NOT NULL;


