-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/constraints/habit_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  DROP CONSTRAINT habit_logs_entity_id_fkey;


