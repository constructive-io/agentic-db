-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/meta/column


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ADD COLUMN id uuid;

