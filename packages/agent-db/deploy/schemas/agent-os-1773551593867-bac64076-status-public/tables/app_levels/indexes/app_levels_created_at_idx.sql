-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/indexes/app_levels_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/created_at/column


CREATE INDEX app_levels_created_at_idx ON "agent-os-1773551593867-bac64076-status-public".app_levels ( created_at );

