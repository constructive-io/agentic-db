-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  DROP COLUMN name RESTRICT;


