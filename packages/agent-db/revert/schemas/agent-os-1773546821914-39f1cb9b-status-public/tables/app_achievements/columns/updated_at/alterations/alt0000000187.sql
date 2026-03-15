-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/updated_at/alterations/alt0000000187


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


