-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/related_entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/status/alterations/alt0000001492


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
  ADD COLUMN related_entity_id uuid;

