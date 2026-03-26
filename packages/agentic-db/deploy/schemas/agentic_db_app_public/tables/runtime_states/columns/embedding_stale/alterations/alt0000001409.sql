-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/alterations/alt0000001409
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/column



ALTER TABLE "agentic_db_app_public".runtime_states 
    ALTER COLUMN embedding_stale SET DEFAULT true;

