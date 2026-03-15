-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_steps 
  DROP COLUMN name RESTRICT;


