-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/constraints/chat_message_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ADD CONSTRAINT chat_message_chunks_pkey PRIMARY KEY (id);

