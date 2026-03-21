-- Deploy: schemas/agentic_db_app_public/tables/company_memories/constraints/company_memories_memory_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.company_memories 
  ADD CONSTRAINT company_memories_memory_id_fkey 
    FOREIGN KEY(memory_id) 
    REFERENCES agentic_db_app_public.memories (id) 
    ON DELETE CASCADE;

