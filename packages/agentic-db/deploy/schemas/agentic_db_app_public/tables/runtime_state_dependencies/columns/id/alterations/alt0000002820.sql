-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/id/alterations/alt0000002820
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/id/column



ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
    ALTER COLUMN id SET DEFAULT uuidv7();

