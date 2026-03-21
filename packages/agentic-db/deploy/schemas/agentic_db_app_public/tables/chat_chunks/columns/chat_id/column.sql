-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/columns/chat_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_session_id_idx


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ADD COLUMN chat_id uuid;

