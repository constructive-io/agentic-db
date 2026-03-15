-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limit_defaults/columns/name/alterations/alt0000001869
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limit_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limit_defaults/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limit_defaults 
  ALTER COLUMN name SET NOT NULL;

