-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/updated_at/alterations/alt0000001796


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


