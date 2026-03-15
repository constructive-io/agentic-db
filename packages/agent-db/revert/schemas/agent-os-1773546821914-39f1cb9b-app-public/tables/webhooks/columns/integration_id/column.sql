-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/integration_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  DROP COLUMN integration_id RESTRICT;


