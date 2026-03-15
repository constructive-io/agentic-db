-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/notes/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  DROP COLUMN notes RESTRICT;


