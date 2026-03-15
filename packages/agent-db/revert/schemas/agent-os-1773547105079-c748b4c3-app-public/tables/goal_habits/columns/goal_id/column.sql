-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/columns/goal_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_habits 
  DROP COLUMN goal_id RESTRICT;


