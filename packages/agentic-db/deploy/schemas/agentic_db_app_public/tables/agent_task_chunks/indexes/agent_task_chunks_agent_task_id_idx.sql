-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/indexes/agent_task_chunks_agent_task_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/agent_task_id/column


CREATE INDEX agent_task_chunks_agent_task_id_idx ON agentic_db_app_public.agent_task_chunks USING BTREE ( agent_task_id );

