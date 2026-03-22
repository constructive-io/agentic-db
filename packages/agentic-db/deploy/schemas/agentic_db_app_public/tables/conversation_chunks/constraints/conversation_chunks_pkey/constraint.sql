-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/constraints/conversation_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ADD CONSTRAINT conversation_chunks_pkey PRIMARY KEY (id);

