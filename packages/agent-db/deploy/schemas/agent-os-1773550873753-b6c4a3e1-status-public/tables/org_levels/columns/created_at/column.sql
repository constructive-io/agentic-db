-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_levels 
  ADD COLUMN created_at timestamptz;

