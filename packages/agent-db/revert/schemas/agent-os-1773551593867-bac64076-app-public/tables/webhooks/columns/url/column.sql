-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  DROP COLUMN url RESTRICT;


