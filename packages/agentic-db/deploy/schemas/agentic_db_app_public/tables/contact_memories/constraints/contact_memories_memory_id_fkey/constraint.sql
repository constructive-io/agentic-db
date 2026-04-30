-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/constraints/contact_memories_memory_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.contact_memories 
  ADD CONSTRAINT contact_memories_memory_id_fkey 
    FOREIGN KEY(memory_id) 
    REFERENCES agentic_db_app_public.memories (id) 
    ON DELETE CASCADE;

