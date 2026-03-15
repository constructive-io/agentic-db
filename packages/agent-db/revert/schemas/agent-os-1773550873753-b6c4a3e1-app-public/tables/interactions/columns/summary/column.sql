-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/summary/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  DROP COLUMN summary RESTRICT;


