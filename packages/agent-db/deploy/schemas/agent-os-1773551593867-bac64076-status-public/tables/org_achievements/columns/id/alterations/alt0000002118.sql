-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/id/alterations/alt0000002118
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ALTER COLUMN id SET NOT NULL;

