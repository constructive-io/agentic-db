-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/indexes/app_levels_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/updated_at/column


CREATE INDEX app_levels_updated_at_idx ON "agent-os-1773546821914-39f1cb9b-status-public".app_levels ( updated_at );

