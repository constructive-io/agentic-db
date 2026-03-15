-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/integration_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/updated_at/alterations/alt0000001439


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  ADD COLUMN integration_id uuid;

