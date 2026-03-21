-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/constraints/chat_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.chat_chunks 
  ADD CONSTRAINT chat_chunks_pkey PRIMARY KEY (id);

