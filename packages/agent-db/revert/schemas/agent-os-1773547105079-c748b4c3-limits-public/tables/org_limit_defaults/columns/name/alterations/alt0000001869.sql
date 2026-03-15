-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limit_defaults/columns/name/alterations/alt0000001869


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


