-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/project_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
  DROP COLUMN project_id RESTRICT;


