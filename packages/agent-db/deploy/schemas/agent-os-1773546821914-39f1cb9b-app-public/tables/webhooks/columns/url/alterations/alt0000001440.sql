-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/url/alterations/alt0000001440
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/url/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/integration_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  ALTER COLUMN url SET NOT NULL;

