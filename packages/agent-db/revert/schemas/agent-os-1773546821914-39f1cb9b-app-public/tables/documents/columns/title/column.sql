-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  DROP COLUMN title RESTRICT;


