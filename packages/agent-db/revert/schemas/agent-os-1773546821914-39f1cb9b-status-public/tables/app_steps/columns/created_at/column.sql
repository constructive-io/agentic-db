-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_steps 
  DROP COLUMN created_at RESTRICT;


