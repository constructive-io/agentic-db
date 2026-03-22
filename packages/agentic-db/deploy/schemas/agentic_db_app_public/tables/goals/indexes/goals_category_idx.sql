-- Deploy: schemas/agentic_db_app_public/tables/goals/indexes/goals_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX goals_category_idx ON agentic_db_app_public.goals USING BTREE ( category );

