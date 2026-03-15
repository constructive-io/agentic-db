-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  DROP COLUMN id RESTRICT;


