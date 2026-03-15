-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/content_hash/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DROP COLUMN content_hash RESTRICT;


