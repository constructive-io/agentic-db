-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/action/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  DROP COLUMN action RESTRICT;


