-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/name/alterations/alt0000002086


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_levels 
  ALTER COLUMN name DROP NOT NULL;


