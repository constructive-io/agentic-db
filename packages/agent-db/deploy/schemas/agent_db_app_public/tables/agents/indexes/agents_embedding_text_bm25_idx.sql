-- Deploy: schemas/agent_db_app_public/tables/agents/indexes/agents_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_embedding_text_bm25_idx


CREATE INDEX agents_embedding_text_bm25_idx ON agent_db_app_public.agents USING bm25 ( embedding_text ) WITH ( text_config = english );

