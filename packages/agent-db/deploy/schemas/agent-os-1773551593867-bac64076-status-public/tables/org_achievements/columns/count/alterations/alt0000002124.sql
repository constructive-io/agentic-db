-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/count/alterations/alt0000002124
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/count/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ALTER COLUMN count SET NOT NULL;

