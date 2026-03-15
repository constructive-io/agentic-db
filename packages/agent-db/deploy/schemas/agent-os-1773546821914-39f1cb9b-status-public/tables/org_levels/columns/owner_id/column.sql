-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/columns/owner_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_levels 
  ADD COLUMN owner_id uuid;

