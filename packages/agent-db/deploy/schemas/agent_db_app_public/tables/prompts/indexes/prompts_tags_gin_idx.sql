-- Deploy: schemas/agent_db_app_public/tables/prompts/indexes/prompts_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_tags_gin_idx


CREATE INDEX prompts_tags_gin_idx ON agent_db_app_public.prompts USING GIN ( tags );

