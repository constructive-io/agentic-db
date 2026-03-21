-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE agentic_db_app_public.chats 
  ADD COLUMN id uuid;

