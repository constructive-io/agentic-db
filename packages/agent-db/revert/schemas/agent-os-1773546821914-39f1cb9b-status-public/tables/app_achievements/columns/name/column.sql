-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  DROP COLUMN name RESTRICT;


