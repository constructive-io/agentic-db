-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table


ALTER TABLE agentic_db_app_public.runtime_states 
  ADD COLUMN embedding_updated_at timestamptz;

