-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/project_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  DROP COLUMN project_id RESTRICT;


