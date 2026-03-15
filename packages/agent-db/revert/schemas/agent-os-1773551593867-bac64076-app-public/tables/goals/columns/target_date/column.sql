-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/target_date/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  DROP COLUMN target_date RESTRICT;


