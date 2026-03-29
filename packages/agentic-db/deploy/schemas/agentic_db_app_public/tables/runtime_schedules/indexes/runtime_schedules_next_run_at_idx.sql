-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/indexes/runtime_schedules_next_run_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/next_run_at/column


CREATE INDEX runtime_schedules_next_run_at_idx ON agentic_db_app_public.runtime_schedules USING BTREE ( next_run_at );

