-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/secret/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/event_type/alterations/alt0000003050


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  ADD COLUMN secret text;

