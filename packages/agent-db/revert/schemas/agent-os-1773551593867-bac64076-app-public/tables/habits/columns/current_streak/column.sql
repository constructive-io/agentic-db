-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/current_streak/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  DROP COLUMN current_streak RESTRICT;


