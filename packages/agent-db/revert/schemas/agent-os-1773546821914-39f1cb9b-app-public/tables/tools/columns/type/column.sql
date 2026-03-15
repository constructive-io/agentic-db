-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  DROP COLUMN type RESTRICT;


