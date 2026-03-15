-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/columns/project_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_projects 
  DROP COLUMN project_id RESTRICT;


