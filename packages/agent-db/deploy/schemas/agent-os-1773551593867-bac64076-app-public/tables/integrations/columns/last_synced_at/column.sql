-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/last_synced_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/status/alterations/alt0000003040


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ADD COLUMN last_synced_at timestamptz;

