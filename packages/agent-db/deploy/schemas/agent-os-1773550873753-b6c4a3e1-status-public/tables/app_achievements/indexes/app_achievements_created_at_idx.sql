-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/indexes/app_achievements_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/created_at/column


CREATE INDEX app_achievements_created_at_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements ( created_at );

