-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/id/alterations/alt0000003550
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx



ALTER TABLE agentic_db_app_public.runtime_states 
    ALTER COLUMN id SET DEFAULT uuidv7();

