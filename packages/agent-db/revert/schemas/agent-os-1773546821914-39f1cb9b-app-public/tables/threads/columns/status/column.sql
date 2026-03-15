-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/status/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  DROP COLUMN status RESTRICT;


