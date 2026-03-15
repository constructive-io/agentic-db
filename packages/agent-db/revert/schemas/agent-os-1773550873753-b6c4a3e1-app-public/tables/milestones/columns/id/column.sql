-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
  DROP COLUMN id RESTRICT;


