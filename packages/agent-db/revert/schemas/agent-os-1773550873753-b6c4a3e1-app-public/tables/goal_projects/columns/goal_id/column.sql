-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/columns/goal_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_projects 
  DROP COLUMN goal_id RESTRICT;


