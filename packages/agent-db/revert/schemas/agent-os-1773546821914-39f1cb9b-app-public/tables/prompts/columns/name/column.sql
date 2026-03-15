-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  DROP COLUMN name RESTRICT;


