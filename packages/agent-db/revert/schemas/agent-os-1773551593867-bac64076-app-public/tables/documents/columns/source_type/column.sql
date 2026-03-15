-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/source_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN source_type RESTRICT;


