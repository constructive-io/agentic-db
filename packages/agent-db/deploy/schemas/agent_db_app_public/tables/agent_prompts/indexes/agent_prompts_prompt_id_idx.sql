-- Deploy: schemas/agent_db_app_public/tables/agent_prompts/indexes/agent_prompts_prompt_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_prompts/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/columns/prompt_id/column
-- requires: schemas/agent_db_app_public/tables/agent_prompts/indexes/agent_prompts_agent_id_idx


CREATE INDEX agent_prompts_prompt_id_idx ON "agent_db_app_public".agent_prompts USING BTREE ( prompt_id );

