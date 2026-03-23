-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_config_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE INDEX agents_config_gin_idx ON agentic_db_app_public.agents USING GIN ( config );

