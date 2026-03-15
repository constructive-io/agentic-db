-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/best_streak/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  DROP COLUMN best_streak RESTRICT;


