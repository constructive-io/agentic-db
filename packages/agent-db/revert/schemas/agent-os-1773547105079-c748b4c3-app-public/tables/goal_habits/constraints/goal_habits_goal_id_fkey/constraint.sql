-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/constraints/goal_habits_goal_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_habits 
  DROP CONSTRAINT goal_habits_goal_id_fkey;


