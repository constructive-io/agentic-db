-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/constraints/memory_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ADD CONSTRAINT memory_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

