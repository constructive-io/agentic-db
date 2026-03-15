-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  DROP COLUMN last_accessed_at RESTRICT;


