-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ADD COLUMN state_id uuid;

