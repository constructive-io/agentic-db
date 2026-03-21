-- Deploy: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/date/column
-- requires: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_status_idx


CREATE INDEX expenses_date_idx ON agentic_db_app_public.expenses USING BTREE ( date );

