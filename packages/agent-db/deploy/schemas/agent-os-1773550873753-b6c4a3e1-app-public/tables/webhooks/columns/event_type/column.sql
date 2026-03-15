-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/event_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/url/alterations/alt0000001440


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  ADD COLUMN event_type text;

