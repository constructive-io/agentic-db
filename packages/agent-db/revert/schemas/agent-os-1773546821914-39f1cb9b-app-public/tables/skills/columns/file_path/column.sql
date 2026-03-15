-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/file_path/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DROP COLUMN file_path RESTRICT;


