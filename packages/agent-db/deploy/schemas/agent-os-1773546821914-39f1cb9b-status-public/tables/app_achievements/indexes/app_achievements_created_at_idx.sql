-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/indexes/app_achievements_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/created_at/column


CREATE INDEX app_achievements_created_at_idx ON "agent-os-1773546821914-39f1cb9b-status-public".app_achievements ( created_at );

