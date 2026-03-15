-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/status/alterations/alt0000001492
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/recurrence/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
    ALTER COLUMN status SET DEFAULT 'pending';

