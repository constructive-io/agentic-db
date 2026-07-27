-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/constraints/runtime_logs_runtime_state_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD CONSTRAINT runtime_logs_runtime_state_id_fkey 
    FOREIGN KEY(runtime_state_id) 
    REFERENCES agentic_db_app_public.runtime_states (id) 
    ON DELETE CASCADE;

