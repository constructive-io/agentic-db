-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
  DROP COLUMN id RESTRICT;


