-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/count/alterations/alt0000001792


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN count DROP NOT NULL;


