-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/runtime_state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ADD COLUMN runtime_state_id uuid;

