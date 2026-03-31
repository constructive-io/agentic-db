-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ADD COLUMN is_active bool;

