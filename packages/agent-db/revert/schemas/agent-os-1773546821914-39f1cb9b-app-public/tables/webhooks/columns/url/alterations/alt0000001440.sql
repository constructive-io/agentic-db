-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/url/alterations/alt0000001440


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  ALTER COLUMN url DROP NOT NULL;


