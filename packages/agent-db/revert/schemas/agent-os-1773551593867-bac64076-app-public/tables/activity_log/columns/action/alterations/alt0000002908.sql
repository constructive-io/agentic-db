-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/action/alterations/alt0000002908


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN action DROP NOT NULL;


