-- Deploy: schemas/agent_db_app_public/tables/reminders/indexes/reminders_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/status/column
-- requires: schemas/agent_db_app_public/tables/reminders/indexes/reminders_due_at_idx


CREATE INDEX reminders_status_idx ON agent_db_app_public.reminders USING BTREE ( status );

