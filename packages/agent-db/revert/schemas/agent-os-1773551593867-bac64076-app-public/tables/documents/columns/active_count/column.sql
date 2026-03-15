-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/active_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN active_count RESTRICT;


