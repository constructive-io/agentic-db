-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/content/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  DROP COLUMN content RESTRICT;


