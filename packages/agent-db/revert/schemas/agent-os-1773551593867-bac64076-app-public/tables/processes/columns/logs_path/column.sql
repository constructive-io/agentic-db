-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/logs_path/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  DROP COLUMN logs_path RESTRICT;


