-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/constraints/goal_habits_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_habits 
  DROP CONSTRAINT goal_habits_entity_id_fkey;


