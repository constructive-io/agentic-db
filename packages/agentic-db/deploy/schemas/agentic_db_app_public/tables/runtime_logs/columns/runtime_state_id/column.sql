-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ADD COLUMN runtime_state_id uuid;

