-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  DROP COLUMN name RESTRICT;


