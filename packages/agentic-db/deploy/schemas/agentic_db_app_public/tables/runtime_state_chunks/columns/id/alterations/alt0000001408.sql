-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/id/alterations/alt0000001408
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/alterations/alt0000001405



ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

