-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agents/triggers/agents_enqueue_embedding_update_tg


GRANT UPDATE ON agentic_db_app_public.agent_tasks TO authenticated;

