-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/active_count/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  DROP COLUMN active_count RESTRICT;


