-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/memory_category/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  DROP COLUMN memory_category RESTRICT;


