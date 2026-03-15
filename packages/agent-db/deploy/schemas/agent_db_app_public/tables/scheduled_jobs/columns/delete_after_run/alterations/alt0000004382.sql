-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000004382
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/delete_after_run/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000004381



ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN delete_after_run SET DEFAULT false;

