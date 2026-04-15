-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX prompts_category_idx ON agentic_db_app_public.prompts USING BTREE ( category );

