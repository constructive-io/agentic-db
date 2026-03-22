-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_frequency_idx


CREATE INDEX habits_is_active_idx ON agentic_db_app_public.habits USING BTREE ( is_active );

