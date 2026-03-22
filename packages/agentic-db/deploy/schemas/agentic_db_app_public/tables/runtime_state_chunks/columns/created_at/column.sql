-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ADD COLUMN created_at timestamptz;

