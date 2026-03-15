-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/target_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  DROP COLUMN target_date RESTRICT;


