-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/secret/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
  ADD COLUMN is_active bool;

