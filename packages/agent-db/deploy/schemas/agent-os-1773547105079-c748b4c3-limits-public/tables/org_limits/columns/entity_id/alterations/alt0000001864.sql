-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/entity_id/alterations/alt0000001864
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ALTER COLUMN entity_id SET NOT NULL;

