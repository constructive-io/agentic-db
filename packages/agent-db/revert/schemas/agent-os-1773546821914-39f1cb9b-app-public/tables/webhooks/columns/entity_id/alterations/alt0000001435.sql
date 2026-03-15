-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/entity_id/alterations/alt0000001435


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  ALTER COLUMN entity_id DROP NOT NULL;


