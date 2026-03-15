-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/metadata/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  DROP COLUMN metadata RESTRICT;


