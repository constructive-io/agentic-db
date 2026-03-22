-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000001384
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/column



ALTER TABLE "agentic_db_app_public".runtime_schedules 
    ALTER COLUMN timezone SET DEFAULT 'UTC';

