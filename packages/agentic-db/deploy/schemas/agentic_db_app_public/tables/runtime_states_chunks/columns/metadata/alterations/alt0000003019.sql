-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/metadata/alterations/alt0000003019
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/metadata/column



ALTER TABLE agentic_db_app_public.runtime_states_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

