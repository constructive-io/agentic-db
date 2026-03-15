-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/size_bytes/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  DROP COLUMN size_bytes RESTRICT;


