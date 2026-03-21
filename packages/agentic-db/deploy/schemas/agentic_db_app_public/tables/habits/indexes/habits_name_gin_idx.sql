-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_title_gin_idx


CREATE INDEX habits_name_gin_idx ON agentic_db_app_public.habits USING gin ( name gin_trgm_ops );

