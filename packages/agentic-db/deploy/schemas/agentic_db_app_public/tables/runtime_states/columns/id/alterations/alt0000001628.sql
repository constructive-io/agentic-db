-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/id/alterations/alt0000001628
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx



ALTER TABLE "agentic_db_app_public".runtime_states 
    ALTER COLUMN id SET DEFAULT uuidv7();

