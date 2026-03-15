-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/name/alterations/alt0000002888


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ALTER COLUMN name DROP NOT NULL;


