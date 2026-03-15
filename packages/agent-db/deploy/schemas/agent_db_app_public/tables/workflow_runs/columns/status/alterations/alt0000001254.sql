-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/status/alterations/alt0000001254
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/status/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/workflow_id/alterations/alt0000001253



ALTER TABLE agent_db_app_public.workflow_runs 
    ALTER COLUMN status SET DEFAULT 'pending';

