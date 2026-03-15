-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/status/alterations/alt0000001492
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/status/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/recurrence/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
    ALTER COLUMN status SET DEFAULT 'pending';

