-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/caption/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  DROP COLUMN caption RESTRICT;


