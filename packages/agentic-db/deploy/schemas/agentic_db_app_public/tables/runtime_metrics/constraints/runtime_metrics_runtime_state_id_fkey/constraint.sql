-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/constraints/runtime_metrics_runtime_state_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ADD CONSTRAINT runtime_metrics_runtime_state_id_fkey 
    FOREIGN KEY(runtime_state_id) 
    REFERENCES agentic_db_app_public.runtime_states (id) 
    ON DELETE CASCADE;

