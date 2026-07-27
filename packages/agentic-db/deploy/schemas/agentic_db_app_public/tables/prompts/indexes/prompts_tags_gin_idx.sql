-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/tags/column


CREATE INDEX prompts_tags_gin_idx ON agentic_db_app_public.prompts USING GIN ( tags );

