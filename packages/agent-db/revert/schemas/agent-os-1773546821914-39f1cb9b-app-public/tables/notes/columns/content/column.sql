-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/content/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  DROP COLUMN content RESTRICT;


