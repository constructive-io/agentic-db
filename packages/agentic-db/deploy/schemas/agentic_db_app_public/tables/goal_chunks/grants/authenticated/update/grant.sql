-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_enqueue_embedding_update_tg


GRANT UPDATE ON agentic_db_app_public.goal_chunks TO authenticated;

