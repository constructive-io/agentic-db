-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/constraints/runtime_states_chunks_runtime_states_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ADD CONSTRAINT runtime_states_chunks_runtime_states_id_fkey 
    FOREIGN KEY(runtime_states_id) 
    REFERENCES "agentic_db_app_public".runtime_states (id) 
    ON DELETE CASCADE;

