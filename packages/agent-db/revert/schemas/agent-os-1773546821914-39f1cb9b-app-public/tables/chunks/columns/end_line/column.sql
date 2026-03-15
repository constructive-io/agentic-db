-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/end_line/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  DROP COLUMN end_line RESTRICT;


