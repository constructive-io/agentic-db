-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ENABLE ROW LEVEL SECURITY;

