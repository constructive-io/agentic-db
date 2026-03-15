-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/summary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  DROP COLUMN summary RESTRICT;


