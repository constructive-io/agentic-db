-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000002188
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/session_id/column



ALTER TABLE "agentic_db_app_public".scheduled_jobs 
    ALTER COLUMN is_active SET DEFAULT true;

