-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/integration_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  ADD COLUMN url text;

