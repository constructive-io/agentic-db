-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/category/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
  DROP COLUMN category RESTRICT;


