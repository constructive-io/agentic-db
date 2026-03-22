-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_enqueue_embedding_update_tg


GRANT UPDATE ON "agentic_db_app_public".tool_definitions TO authenticated;

