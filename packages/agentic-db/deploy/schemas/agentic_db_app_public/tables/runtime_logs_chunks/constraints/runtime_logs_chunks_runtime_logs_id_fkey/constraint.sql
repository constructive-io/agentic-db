-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/constraints/runtime_logs_chunks_runtime_logs_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
  ADD CONSTRAINT runtime_logs_chunks_runtime_logs_id_fkey 
    FOREIGN KEY(runtime_logs_id) 
    REFERENCES "agentic_db_app_public".runtime_logs (id) 
    ON DELETE CASCADE;

