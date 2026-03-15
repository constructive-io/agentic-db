-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/created_at/alterations/alt0000000186


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


