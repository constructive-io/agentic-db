-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/indexes/org_achievements_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/updated_at/column


CREATE INDEX org_achievements_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements ( updated_at );

