-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  DROP COLUMN name RESTRICT;


