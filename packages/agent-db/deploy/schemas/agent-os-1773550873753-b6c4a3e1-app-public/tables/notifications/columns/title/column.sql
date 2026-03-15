-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/updated_at/alterations/alt0000001541


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notifications 
  ADD COLUMN title text;

