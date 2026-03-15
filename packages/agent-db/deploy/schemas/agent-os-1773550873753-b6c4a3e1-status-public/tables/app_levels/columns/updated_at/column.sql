-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  ADD COLUMN updated_at timestamptz;

