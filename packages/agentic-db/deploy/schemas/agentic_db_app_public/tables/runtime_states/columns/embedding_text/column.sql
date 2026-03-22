-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/ended_at/column


ALTER TABLE agentic_db_app_public.runtime_states 
  ADD COLUMN embedding_text text;

