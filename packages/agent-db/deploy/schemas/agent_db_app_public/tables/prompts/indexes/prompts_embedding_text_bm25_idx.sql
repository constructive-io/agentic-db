-- Deploy: schemas/agent_db_app_public/tables/prompts/indexes/prompts_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_embedding_text_bm25_idx


CREATE INDEX prompts_embedding_text_bm25_idx ON agent_db_app_public.prompts USING bm25 ( embedding_text ) WITH ( text_config = english );

