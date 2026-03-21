-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/constraints/memory_chunks_memory_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx


ALTER TABLE agentic_db_app_public.memory_chunks 
  ADD CONSTRAINT memory_chunks_memory_id_fkey 
    FOREIGN KEY(memory_id) 
    REFERENCES agentic_db_app_public.memories (id) 
    ON DELETE CASCADE;

