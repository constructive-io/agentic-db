-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/updated_at/alterations/alt0000002129


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


