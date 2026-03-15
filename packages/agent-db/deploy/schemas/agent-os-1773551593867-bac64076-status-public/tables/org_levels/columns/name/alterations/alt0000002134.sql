-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/columns/name/alterations/alt0000002134
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_levels 
  ALTER COLUMN name SET NOT NULL;

