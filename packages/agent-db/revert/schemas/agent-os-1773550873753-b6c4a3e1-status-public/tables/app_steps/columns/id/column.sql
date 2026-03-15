-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_steps 
  DROP COLUMN id RESTRICT;


