-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  DROP COLUMN id RESTRICT;


