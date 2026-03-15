-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/indexes/org_levels_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/created_at/column


CREATE INDEX org_levels_created_at_idx ON "agent-os-1773547105079-c748b4c3-status-public".org_levels ( created_at );

