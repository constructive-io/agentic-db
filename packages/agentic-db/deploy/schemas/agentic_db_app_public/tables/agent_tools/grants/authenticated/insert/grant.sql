-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


GRANT INSERT ON agentic_db_app_public.agent_tools TO authenticated;

