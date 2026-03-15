-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/slug/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DROP COLUMN slug RESTRICT;


