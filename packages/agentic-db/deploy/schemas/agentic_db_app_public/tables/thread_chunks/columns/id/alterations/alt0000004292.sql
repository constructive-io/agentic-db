-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/id/alterations/alt0000004292
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column



ALTER TABLE agentic_db_app_public.thread_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

