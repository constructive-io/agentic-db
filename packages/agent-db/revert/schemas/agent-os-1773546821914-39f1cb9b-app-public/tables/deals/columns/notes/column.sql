-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/notes/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  DROP COLUMN notes RESTRICT;


