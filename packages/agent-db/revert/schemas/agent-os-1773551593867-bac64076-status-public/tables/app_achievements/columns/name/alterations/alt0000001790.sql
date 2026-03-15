-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/name/alterations/alt0000001790


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN name DROP NOT NULL;


