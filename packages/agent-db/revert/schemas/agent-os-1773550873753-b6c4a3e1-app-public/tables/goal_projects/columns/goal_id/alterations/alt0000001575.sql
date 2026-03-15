-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/columns/goal_id/alterations/alt0000001575


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_projects 
  ALTER COLUMN goal_id DROP NOT NULL;


