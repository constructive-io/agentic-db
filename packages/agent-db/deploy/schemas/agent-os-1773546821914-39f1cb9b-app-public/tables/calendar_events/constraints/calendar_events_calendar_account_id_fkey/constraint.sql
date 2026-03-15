-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/constraints/calendar_events_calendar_account_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ADD CONSTRAINT calendar_events_calendar_account_id_fkey 
    FOREIGN KEY(calendar_account_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts (id) 
    ON DELETE CASCADE;

