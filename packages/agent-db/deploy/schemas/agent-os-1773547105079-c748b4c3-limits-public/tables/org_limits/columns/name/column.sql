-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ADD COLUMN name citext;

