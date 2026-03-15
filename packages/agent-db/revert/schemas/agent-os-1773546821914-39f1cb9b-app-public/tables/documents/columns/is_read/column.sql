-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/is_read/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  DROP COLUMN is_read RESTRICT;


