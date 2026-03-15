-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/indexes/org_steps_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/updated_at/column


CREATE INDEX org_steps_updated_at_idx ON "agent-os-1773547105079-c748b4c3-status-public".org_steps ( updated_at );

