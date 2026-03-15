-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/source_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  DROP COLUMN source_type RESTRICT;


