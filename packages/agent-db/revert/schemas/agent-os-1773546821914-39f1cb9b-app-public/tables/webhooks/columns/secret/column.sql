-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/secret/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  DROP COLUMN secret RESTRICT;


