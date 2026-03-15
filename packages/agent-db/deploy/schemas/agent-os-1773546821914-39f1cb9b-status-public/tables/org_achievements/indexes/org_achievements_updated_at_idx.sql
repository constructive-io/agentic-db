-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/indexes/org_achievements_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/updated_at/column


CREATE INDEX org_achievements_updated_at_idx ON "agent-os-1773546821914-39f1cb9b-status-public".org_achievements ( updated_at );

