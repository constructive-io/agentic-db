-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_category_idx


CREATE INDEX prompts_type_idx ON "agentic_db_app_public".prompts USING BTREE ( type );

