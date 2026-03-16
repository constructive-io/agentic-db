-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/constraints/calendar_events_calendar_account_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_events 
  ADD CONSTRAINT calendar_events_calendar_account_id_fkey 
    FOREIGN KEY(calendar_account_id) 
    REFERENCES "agentic_db_app_public".calendar_accounts (id) 
    ON DELETE CASCADE;

