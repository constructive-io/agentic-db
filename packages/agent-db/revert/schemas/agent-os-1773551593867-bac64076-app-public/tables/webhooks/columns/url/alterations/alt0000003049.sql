-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/url/alterations/alt0000003049


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  ALTER COLUMN url DROP NOT NULL;


