-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/constraints/goal_projects_goal_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_projects 
  DROP CONSTRAINT goal_projects_goal_id_fkey;


