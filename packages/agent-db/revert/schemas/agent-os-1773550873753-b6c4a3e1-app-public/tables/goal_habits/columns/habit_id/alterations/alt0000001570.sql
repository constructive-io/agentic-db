-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/columns/habit_id/alterations/alt0000001570


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_habits 
  ALTER COLUMN habit_id DROP NOT NULL;


