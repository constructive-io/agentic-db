-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000001211
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/session_id/column



ALTER TABLE agent_db_app_public.scheduled_jobs 
    ALTER COLUMN is_active SET DEFAULT true;

