-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/columns/project_id/alterations/alt0000003185


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_projects 
  ALTER COLUMN project_id DROP NOT NULL;


