-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  DROP COLUMN last_accessed_at RESTRICT;


