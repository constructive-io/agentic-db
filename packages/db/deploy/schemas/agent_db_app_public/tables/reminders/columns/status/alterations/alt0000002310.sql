-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/status/alterations/alt0000002310
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/status/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/recurrence/column



ALTER TABLE "agent_db_app_public".reminders 
    ALTER COLUMN status SET DEFAULT 'pending';

