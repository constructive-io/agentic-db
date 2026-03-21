-- Deploy: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_content_gin_idx


CREATE INDEX reminders_title_gin_idx ON agentic_db_app_public.reminders USING gin ( title gin_trgm_ops );

