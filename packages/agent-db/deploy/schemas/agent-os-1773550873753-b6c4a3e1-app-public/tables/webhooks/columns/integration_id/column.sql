-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/integration_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/updated_at/alterations/alt0000001439


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  ADD COLUMN integration_id uuid;

