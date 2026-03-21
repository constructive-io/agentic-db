-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/constraints/chat_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ADD CONSTRAINT chat_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

