-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/entity_id/alterations/alt0000001507


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


