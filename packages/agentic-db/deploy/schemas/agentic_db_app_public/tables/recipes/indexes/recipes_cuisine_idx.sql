-- Deploy: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_cuisine_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/cuisine/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_calories_idx


CREATE INDEX recipes_cuisine_idx ON agentic_db_app_public.recipes USING BTREE ( cuisine );

