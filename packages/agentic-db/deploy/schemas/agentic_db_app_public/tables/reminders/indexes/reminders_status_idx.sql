-- Deploy: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_due_at_idx


CREATE INDEX reminders_status_idx ON "agentic_db_app_public".reminders USING BTREE ( status );

