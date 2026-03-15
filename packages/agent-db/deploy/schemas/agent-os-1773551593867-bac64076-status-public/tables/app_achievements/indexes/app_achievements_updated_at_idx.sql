-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/indexes/app_achievements_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/updated_at/column


CREATE INDEX app_achievements_updated_at_idx ON "agent-os-1773551593867-bac64076-status-public".app_achievements ( updated_at );

