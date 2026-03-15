-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/project_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  DROP COLUMN project_id RESTRICT;


