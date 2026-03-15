-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  DROP COLUMN is_active RESTRICT;


