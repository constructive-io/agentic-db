-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/status/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  DROP COLUMN status RESTRICT;


