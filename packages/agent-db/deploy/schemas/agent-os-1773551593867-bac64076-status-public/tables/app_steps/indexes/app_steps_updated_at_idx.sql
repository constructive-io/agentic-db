-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/indexes/app_steps_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/updated_at/column


CREATE INDEX app_steps_updated_at_idx ON "agent-os-1773551593867-bac64076-status-public".app_steps ( updated_at );

