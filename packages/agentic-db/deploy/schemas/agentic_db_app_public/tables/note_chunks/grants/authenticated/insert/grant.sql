-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/triggers/venue_chunks_enqueue_embedding_update_tg


GRANT INSERT ON agentic_db_app_public.note_chunks TO authenticated;

