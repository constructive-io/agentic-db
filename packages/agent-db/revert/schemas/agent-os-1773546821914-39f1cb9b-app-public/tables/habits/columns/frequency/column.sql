-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/frequency/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  DROP COLUMN frequency RESTRICT;


