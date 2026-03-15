-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/is_active/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  DROP COLUMN is_active RESTRICT;


