-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/status/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  DROP COLUMN status RESTRICT;


