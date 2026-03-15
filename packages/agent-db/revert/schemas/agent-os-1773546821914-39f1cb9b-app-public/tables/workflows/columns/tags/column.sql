-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  DROP COLUMN tags RESTRICT;


