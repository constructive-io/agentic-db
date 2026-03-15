-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/title/alterations/alt0000001491
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/title/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/updated_at/alterations/alt0000001490


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
  ALTER COLUMN title SET NOT NULL;

