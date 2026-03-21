-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_frequency_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/frequency/column
-- requires: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_status_idx


CREATE INDEX habits_frequency_idx ON agentic_db_app_public.habits USING BTREE ( frequency );

