-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/next_run_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/cron_expression/column


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ADD COLUMN next_run_at timestamptz;

