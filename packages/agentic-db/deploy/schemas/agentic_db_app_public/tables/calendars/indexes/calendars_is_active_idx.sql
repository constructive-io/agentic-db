-- Deploy: schemas/agentic_db_app_public/tables/calendars/indexes/calendars_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE INDEX calendars_is_active_idx ON "agentic_db_app_public".calendars USING BTREE ( is_active );

