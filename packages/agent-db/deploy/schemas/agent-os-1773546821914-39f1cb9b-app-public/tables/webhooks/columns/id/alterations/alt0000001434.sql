-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/id/alterations/alt0000001434
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/last_synced_at/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

