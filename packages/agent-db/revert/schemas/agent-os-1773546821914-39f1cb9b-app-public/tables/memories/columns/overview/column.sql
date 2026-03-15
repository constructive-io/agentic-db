-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/overview/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  DROP COLUMN overview RESTRICT;


