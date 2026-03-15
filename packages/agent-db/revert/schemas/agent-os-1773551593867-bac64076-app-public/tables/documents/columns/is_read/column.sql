-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/is_read/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN is_read RESTRICT;


