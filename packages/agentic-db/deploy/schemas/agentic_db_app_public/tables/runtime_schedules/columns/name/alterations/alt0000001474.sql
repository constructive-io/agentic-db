-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/alterations/alt0000001474
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ALTER COLUMN name SET NOT NULL;

