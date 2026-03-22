-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/constraints/conversation_chunks_conversation_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ADD CONSTRAINT conversation_chunks_conversation_id_fkey 
    FOREIGN KEY(conversation_id) 
    REFERENCES "agentic_db_app_public".conversations (id) 
    ON DELETE CASCADE;

