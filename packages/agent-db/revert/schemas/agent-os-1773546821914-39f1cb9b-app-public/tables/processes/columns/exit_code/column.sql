-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/exit_code/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  DROP COLUMN exit_code RESTRICT;


