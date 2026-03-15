-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/count/alterations/alt0000002124


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ALTER COLUMN count DROP NOT NULL;


