-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/id/alterations/alt0000001413
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/id/column



ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

