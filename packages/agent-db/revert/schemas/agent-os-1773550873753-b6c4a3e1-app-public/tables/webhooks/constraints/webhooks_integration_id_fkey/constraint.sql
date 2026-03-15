-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  DROP CONSTRAINT webhooks_integration_id_fkey;


