-- Deploy: schemas/agent_db_app_public/tables/prompts/indexes/prompts_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/type/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_category_idx


CREATE INDEX prompts_type_idx ON "agent_db_app_public".prompts USING BTREE ( type );

