-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/status/alterations/alt0000003101
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/recurrence/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
    ALTER COLUMN status SET DEFAULT 'pending';

