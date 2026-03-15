-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN last_accessed_at RESTRICT;


