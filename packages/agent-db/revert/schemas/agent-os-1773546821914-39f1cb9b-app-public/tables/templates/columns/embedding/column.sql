-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  DROP COLUMN embedding RESTRICT;


