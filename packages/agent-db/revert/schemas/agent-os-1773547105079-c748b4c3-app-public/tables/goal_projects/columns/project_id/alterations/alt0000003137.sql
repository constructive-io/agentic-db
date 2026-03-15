-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/project_id/alterations/alt0000003137


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
  ALTER COLUMN project_id DROP NOT NULL;


