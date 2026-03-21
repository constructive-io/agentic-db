-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_type_idx


CREATE INDEX prompts_is_active_idx ON agentic_db_app_public.prompts USING BTREE ( is_active );

