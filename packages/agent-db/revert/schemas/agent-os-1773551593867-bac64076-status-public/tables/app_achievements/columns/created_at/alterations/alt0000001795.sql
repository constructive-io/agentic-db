-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/created_at/alterations/alt0000001795


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


