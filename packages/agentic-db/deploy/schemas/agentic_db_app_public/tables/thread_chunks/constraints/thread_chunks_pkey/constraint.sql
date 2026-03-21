-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/constraints/thread_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  ADD CONSTRAINT thread_chunks_pkey PRIMARY KEY (id);

