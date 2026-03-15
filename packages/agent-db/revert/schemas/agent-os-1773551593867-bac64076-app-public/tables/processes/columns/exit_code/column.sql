-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/exit_code/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  DROP COLUMN exit_code RESTRICT;


