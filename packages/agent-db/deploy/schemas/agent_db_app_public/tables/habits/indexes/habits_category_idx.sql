-- Deploy: schemas/agent_db_app_public/tables/habits/indexes/habits_category_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/category/column
-- requires: schemas/agent_db_app_public/tables/habits/indexes/habits_frequency_idx


CREATE INDEX habits_category_idx ON agent_db_app_public.habits USING BTREE ( category );

