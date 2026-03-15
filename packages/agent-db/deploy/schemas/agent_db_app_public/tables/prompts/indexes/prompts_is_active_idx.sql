-- Deploy: schemas/agent_db_app_public/tables/prompts/indexes/prompts_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_type_idx


CREATE INDEX prompts_is_active_idx ON "agent_db_app_public".prompts USING BTREE ( is_active );

