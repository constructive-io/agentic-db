-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_update_tg


GRANT DELETE ON "agentic_db_app_public".conversation_chunks TO authenticated;

