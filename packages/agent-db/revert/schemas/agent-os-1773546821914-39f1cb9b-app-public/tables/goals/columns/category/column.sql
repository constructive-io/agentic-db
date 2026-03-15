-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/category/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  DROP COLUMN category RESTRICT;


