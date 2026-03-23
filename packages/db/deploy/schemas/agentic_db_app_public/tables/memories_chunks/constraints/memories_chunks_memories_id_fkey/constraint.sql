-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/constraints/memories_chunks_memories_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".memories_chunks 
  ADD CONSTRAINT memories_chunks_memories_id_fkey 
    FOREIGN KEY(memories_id) 
    REFERENCES "agentic_db_app_public".memories (id) 
    ON DELETE CASCADE;

