-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/ref_type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notifications 
  ADD COLUMN id uuid;

