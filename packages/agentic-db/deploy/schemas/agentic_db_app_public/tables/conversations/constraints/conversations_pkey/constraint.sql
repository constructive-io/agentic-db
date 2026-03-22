-- Deploy: schemas/agentic_db_app_public/tables/conversations/constraints/conversations_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/triggers/runtime_log_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".conversations 
  ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);

