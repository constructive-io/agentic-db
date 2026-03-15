-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/constraints/goal_projects_goal_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
  DROP CONSTRAINT goal_projects_goal_id_fkey;


