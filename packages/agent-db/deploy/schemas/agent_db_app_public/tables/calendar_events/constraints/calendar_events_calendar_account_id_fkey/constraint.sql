-- Deploy: schemas/agent_db_app_public/tables/calendar_events/constraints/calendar_events_calendar_account_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent_db_app_public".calendar_events 
  ADD CONSTRAINT calendar_events_calendar_account_id_fkey 
    FOREIGN KEY(calendar_account_id) 
    REFERENCES "agent_db_app_public".calendar_accounts (id) 
    ON DELETE CASCADE;

