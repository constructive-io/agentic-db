-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/remote_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/thread_id/column


ALTER TABLE agentic_db_app_public.messages 
  ADD COLUMN remote_id text;

