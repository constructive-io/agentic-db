-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/columns/owner_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_levels 
  ADD COLUMN owner_id uuid;

