-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  ADD COLUMN entity_id uuid;

