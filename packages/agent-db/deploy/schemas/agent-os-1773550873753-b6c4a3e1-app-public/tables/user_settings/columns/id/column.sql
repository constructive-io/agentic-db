-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ADD COLUMN id uuid;

