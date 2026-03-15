-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/integration_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  DROP COLUMN integration_id RESTRICT;


