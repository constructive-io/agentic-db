-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/parent_document_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN parent_document_id RESTRICT;


