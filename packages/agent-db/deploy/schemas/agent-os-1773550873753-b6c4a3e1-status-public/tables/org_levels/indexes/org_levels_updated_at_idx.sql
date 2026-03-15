-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/indexes/org_levels_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/columns/updated_at/column


CREATE INDEX org_levels_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".org_levels ( updated_at );

