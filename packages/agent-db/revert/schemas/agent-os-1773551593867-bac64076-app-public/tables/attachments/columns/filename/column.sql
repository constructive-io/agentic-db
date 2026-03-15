-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/filename/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  DROP COLUMN filename RESTRICT;


