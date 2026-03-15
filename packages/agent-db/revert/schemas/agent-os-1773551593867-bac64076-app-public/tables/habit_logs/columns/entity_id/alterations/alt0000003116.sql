-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/entity_id/alterations/alt0000003116


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


