-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  DROP COLUMN category RESTRICT;


