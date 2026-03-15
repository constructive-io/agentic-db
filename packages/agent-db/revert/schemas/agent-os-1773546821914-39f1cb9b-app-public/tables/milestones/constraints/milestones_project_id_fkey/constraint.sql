-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  DROP CONSTRAINT milestones_project_id_fkey;


