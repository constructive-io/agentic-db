-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


GRANT DELETE ON agentic_db_app_public.agent_task_chunks TO authenticated;

