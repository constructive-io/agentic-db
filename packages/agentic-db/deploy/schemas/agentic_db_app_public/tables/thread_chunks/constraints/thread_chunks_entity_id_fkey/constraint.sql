-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/constraints/thread_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  ADD CONSTRAINT thread_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

