-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/status/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  DROP COLUMN status RESTRICT;


