-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/mime_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  DROP COLUMN mime_type RESTRICT;


