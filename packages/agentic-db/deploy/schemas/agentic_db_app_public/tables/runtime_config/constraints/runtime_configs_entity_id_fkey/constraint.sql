-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/constraints/runtime_configs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_config 
  ADD CONSTRAINT runtime_configs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

