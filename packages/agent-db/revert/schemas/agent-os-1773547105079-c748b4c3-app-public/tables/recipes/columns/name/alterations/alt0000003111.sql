-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/name/alterations/alt0000003111


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  ALTER COLUMN name DROP NOT NULL;


