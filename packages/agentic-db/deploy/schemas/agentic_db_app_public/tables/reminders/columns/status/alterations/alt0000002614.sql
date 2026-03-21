-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/status/alterations/alt0000002614
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/recurrence/column



ALTER TABLE "agentic_db_app_public".reminders 
    ALTER COLUMN status SET DEFAULT 'pending';

