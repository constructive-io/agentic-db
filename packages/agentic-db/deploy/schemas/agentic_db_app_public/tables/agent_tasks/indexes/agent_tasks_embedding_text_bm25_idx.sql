-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/embedding_text/column


CREATE INDEX agent_tasks_embedding_text_bm25_idx ON agentic_db_app_public.agent_tasks USING bm25 ( embedding_text ) WITH ( text_config = english );

