-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/alterations/alt0000001383
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/last_run_at/column



ALTER TABLE "agentic_db_app_public".runtime_schedules 
    ALTER COLUMN is_active SET DEFAULT true;

