-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/constraints/messages_chunks_messages_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ADD CONSTRAINT messages_chunks_messages_id_fkey 
    FOREIGN KEY(messages_id) 
    REFERENCES "agentic_db_app_public".messages (id) 
    ON DELETE CASCADE;

