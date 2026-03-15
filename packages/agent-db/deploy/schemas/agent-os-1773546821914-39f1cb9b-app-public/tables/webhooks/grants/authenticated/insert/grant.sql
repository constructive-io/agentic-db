-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/last_synced_at/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".webhooks TO authenticated;

