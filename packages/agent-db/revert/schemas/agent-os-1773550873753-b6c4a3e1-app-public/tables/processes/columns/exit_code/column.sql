-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/exit_code/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  DROP COLUMN exit_code RESTRICT;


