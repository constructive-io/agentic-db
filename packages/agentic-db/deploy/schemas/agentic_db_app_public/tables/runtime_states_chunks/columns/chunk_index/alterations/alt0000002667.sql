-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/chunk_index/alterations/alt0000002667
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/chunk_index/column



ALTER TABLE agentic_db_app_public.runtime_states_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

