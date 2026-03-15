-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/entity_id/alterations/alt0000001507


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


