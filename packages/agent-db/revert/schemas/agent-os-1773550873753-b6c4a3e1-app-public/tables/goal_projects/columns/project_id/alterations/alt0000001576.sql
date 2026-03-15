-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/columns/project_id/alterations/alt0000001576


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_projects 
  ALTER COLUMN project_id DROP NOT NULL;


