-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/goals/indexes/goals_title_gin_idx


CREATE INDEX prompts_name_gin_idx ON "agentic_db_app_public".prompts USING gin ( name gin_trgm_ops );

