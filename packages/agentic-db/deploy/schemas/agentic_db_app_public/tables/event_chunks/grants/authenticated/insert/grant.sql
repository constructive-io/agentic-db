-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/triggers/deal_chunks_enqueue_embedding_update_tg


GRANT INSERT ON "agentic_db_app_public".event_chunks TO authenticated;

