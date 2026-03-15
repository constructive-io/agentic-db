-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/description/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  DROP COLUMN description RESTRICT;


