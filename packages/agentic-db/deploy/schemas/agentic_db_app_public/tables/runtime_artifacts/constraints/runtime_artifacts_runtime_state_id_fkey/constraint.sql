-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/constraints/runtime_artifacts_runtime_state_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ADD CONSTRAINT runtime_artifacts_runtime_state_id_fkey 
    FOREIGN KEY(runtime_state_id) 
    REFERENCES agentic_db_app_public.runtime_states (id) 
    ON DELETE CASCADE;

