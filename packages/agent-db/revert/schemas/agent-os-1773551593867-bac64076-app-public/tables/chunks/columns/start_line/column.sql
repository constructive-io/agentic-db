-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/start_line/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  DROP COLUMN start_line RESTRICT;


