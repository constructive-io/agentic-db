-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/triggers/hiking_trail_chunks_enqueue_embedding_update_tg


GRANT UPDATE ON agentic_db_app_public.memory_chunks TO authenticated;

