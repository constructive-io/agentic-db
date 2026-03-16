-- Deploy: schemas/agent_db_app_public/tables/prompts/indexes/prompts_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/name/column
-- requires: schemas/agent_db_app_public/tables/habits/indexes/habits_name_gin_idx


CREATE INDEX prompts_name_gin_idx ON "agent_db_app_public".prompts USING gin ( name gin_trgm_ops );

