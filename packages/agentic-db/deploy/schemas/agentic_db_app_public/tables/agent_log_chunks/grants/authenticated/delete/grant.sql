-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/triggers/agent_task_chunks_enqueue_embedding_update_tg


GRANT DELETE ON agentic_db_app_public.agent_log_chunks TO authenticated;

