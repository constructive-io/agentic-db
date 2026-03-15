-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/last_synced_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/status/alterations/alt0000001431


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ADD COLUMN last_synced_at timestamptz;

