-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/active_count/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DROP COLUMN active_count RESTRICT;


