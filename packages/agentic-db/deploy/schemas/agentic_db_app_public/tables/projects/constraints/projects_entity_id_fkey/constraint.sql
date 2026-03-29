-- Deploy: schemas/agentic_db_app_public/tables/projects/constraints/projects_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.projects 
  ADD CONSTRAINT projects_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

